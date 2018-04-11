
#   
#   • wyświetlenie historii wypożyczeń danego czytelnika wraz z czasem
#   przetrzymywania każdej z nich (uwzględniającej oddane już książki)

# Klasa Biblioteka - metody wyświetlanie listy ksiązek(wypożyczone, dostepne), wyswietlanie informacji dot. czytelnika, historia czytelinika
# Klasa Książka - dodawanie ksiazek
# Klasa Czytelnik - generowanie im numeru karty , mozliwosc wypożyczania książek dostepnych


class Library
  attr_reader :name
  attr_reader :books
  attr_reader :readers
  
  def initialize(name, books)
    @name = name
    @books = books
    @readers = {}
  end
  # Wyświetlanie listy książek
  def show_books_list
   @books.each do |key, value|
    puts "Tittle: #{key.tittle}, Author: #{key.author}, Available?: #{value}"
   end
  end
  # Dodawanie książek
  def add_books(tittle, author)
    @books[Book.new(tittle, author)] = true
  end
  # Dodawanie czytelnika
  def add_reader(reader)
    def cart_number
      cart_number = []
      3.times { |i| cart_number << ('A'..'Z').to_a.sample }
      6.times { |i| cart_number << rand(10) }
      cart_number.join
    end
    readers[reader] = cart_number
  end
  # Wyświetlanie listy czytelników
  def show_readers_list
    @readers.each do |reader, cart|
      puts "Name: #{reader.name}, Age: #{reader.age}, Cart number: #{cart}"
    end
  end
  # Szukanie książek 
  def find_book(book_tittle, action)
    if action == "borrow"
      @books.each do |book, value|
        if book_tittle == book.tittle && value == true
          @books[book] = false
          return book
        elsif book_tittle == book.tittle && value == false
          return false
        end
      end
      nil
    elsif action == "donating"
      @books.each do |book, value|
        if book_tittle == book.tittle && value == false
          @books[book] = true
          return "Dziękujemy za zwrot książki."
        elsif book_tittle == book.tittle && value == true
          return true
        end
      end
      nil
    end
  end
end

class Book < Library
  attr_reader :tittle
  attr_reader :author
  
  def initialize(tittle, author)
    @tittle = tittle
    @author = author
  end
end

class Reader < Library
  attr_reader :name
  attr_reader :age
  attr_reader :my_books
  attr_reader :history

  def initialize(name, age)
    @name = name
    @age = age
    @my_books = []
    @history = []
  end
  # Wypożyczanie książek
  def borrow_book(book_tittle, library)
    book = library.find_book(book_tittle, "borrow")
    if book == nil
      puts "Nie ma takiej książki w biblitece"
    elsif book == false
      puts "Książka jest już wypożyczona"
    else
      @history << [ book.tittle, Time.new(2018, 3, 10, 15, 30) ] 
      @my_books << [ book.tittle, Time.new(2018, 3, 10, 15, 30) ] 
    end
  end
  # Oddawanie książek 
  def donating_book(book_tittle, library)
    @my_books.each do |my_book|
      donating = library.find_book(book_tittle, "donating")
      if my_book[0] == book_tittle
        puts donating
        @history.delete(my_book)
        my_book << Time.now
        @history << my_book
        @my_books.delete(my_book)
      elsif donating == nil
        puts "Nie mieliśmy takiej książki"
      elsif donating == true
        puts "Mamy już taką książkę, czy napewno była wypożyczana u nas?"
      else
        puts "Nie masz takiej ksiązki do oddania"
      end
    end
  end
end
# Tworzenie książek
book_1 = Book.new("Mały książę", "Antoine de Saint-Exupéry")
book_2 = Book.new("Hamlet", "William Shakespeare")
book_3 = Book.new("Hobbit, czyli tam i z powrotem", "J.R.R. Tolkien")
book_4 = Book.new("Trzej muszkieterowie", "Aleksander Dumas")
book_5 = Book.new("Kod Leonarda da Vinci", "Dan Brown")
book_6 = Book.new("Ania z Zielonego Wzgórza", "Lucy Maud Montgomery")
book_7 = Book.new("Opowieść wigilijna", "Charles Dickens ")
book_8 = Book.new("Drużyna Pierścienia", "J.R.R. Tolkien")
book_9 = Book.new("Kubuś Puchatek", "Alan Alexander Milne")
book_10 = Book.new("Charlie i fabryka czekolady", "Roald Dahl")
# Tworzenie biblioteki
library = Library.new("Czytelniczek", { 
  book_1 => true,
  book_2 => true,
  book_3 => true,
  book_4 => true,
  book_5 => true,
  book_6 => true,
  book_7 => true,
  book_8 => true,
  book_9 => true,
  book_10 => true
})
# Dodanie ksiązki do biblioteki 
library.add_books("Powrót Króla", "J.R.R. Tolkien")
# Wyświetlanie listy książek
library.show_books_list
puts ""
# Tworzenie czytelinków
damian = Reader.new("Damian", 28)
olga = Reader.new("Olga", 29)
pawel = Reader.new("Paweł", 25)

# Dodanie ich do biblioteki, w momencie dodania czytelinika tworzymy dla niego unikalny numer karty
library.add_reader(damian)
library.add_reader(olga)
library.add_reader(pawel)
# Pokazujemy aktualną liste czytelników
library.show_readers_list

damian.borrow_book("Mały książę", library)
damian.borrow_book("Kod Leonarda da Vinci", library)
puts ""
olga.borrow_book("Kosogłos", library)
olga.borrow_book("Mały książę", library)
olga.borrow_book("Charlie i fabryka czekolady", library)
olga.borrow_book("Hamlet", library)

puts ""
puts damian.my_books
puts ''
puts olga.my_books
puts ""

damian.donating_book("Mały książę", library)
damian.donating_book("Kosogłos", library)
damian.donating_book("Hamlet", library)
puts damian.my_books

library.show_books_list
puts damian.history.to_s

