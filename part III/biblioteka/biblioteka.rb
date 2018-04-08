# Napisz program do obsługi biblioteki. Powinien on umożliwiać:
#   • wyświetlenie listy książek w bibliotece, z zaznaczeniem dostępnych oraz aktualnie
#   wypożyczonych (lista książek nie powinna być udostępniona publicznie)
#   • dodawanie nowych książek do listy dostępnych w bibliotece GOTOWE
#   • wypożyczanie i oddawanie książek przez czytelników (niemożliwe jest
#   wypożyczenie już wypożyczonej książki)
#   • dodawanie nowych czytelników do biblioteki wraz z generowaniem im numeru karty GOTOWE
#   bibliotecznej (powinien on składać się z liter oraz cyfr i być unikalny dla każdego
#   czytelnika)
#   • wyświetlenie listy książek wypożyczonych w danym momencie przez konkretnego
#   czytelnika, wraz z datami wypożyczenia każdej z nich
#   • wyświetlenie historii wypożyczeń danego czytelnika wraz z czasem
#   przetrzymywania każdej z nich (uwzględniającej oddane już książki)

# Stwórz ok. 10 książek i 3 czytelników. Sprawdź manualnie poprawność działania
# programu.

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
  
  def show_books_list
   @books.each do |key, value|
    puts "Tittle: #{key.tittle}, Author: #{key.author}, Available?: #{value}"
   end
  end
  
  def add_books(tittle, author)
    @books[Book.new(tittle, author)] = true
  end
  
  def add_reader(reader)
    def cart_number
      cart_number = []
      3.times { |i| cart_number << ('A'..'Z').to_a.sample }
      6.times { |i| cart_number << rand(10) }
      cart_number.join
    end
    readers[reader] = cart_number
  end

  def show_readers_list
    @readers.each do |reader, cart|
      puts "Name: #{reader.name}, Age: #{reader.age}, Cart number: #{cart}"
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

  def initialize(name, age)
    @name = name
    @age = age
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

