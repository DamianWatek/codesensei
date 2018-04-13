# Napisz program, który:
# • wczyta produkty oraz ich ceny z pliku products.csv
# • umożliwi wyszukanie produktu po jego nazwie
# • umożliwi wyświetlenie produktów tańszych/droższych od podanej w argumencie ceny
# • umożliwi konwersję cen produktów do innej waluty po zadanym w argumencie wywołania kursie, 
#   dane po konwersji zapisze do pliku o zadanej w argumencie wywołania nazwie

require "csv"

def menu
  "Choose operation:
  1. Show products list
  2. Find product
  3. Show cheaper products
  4. Show more expensive porducts
  5. Exchange currency
  6. Quit"  
end

def show_products
  CSV.foreach("./products.csv") do |row| 
    if row[0] == "Product"
      puts "#{row[0]}, #{row[1]}"
    elsif 
      puts "#{row[0]}, #{row[1]}zł"
    end
  end
end

def find_product(name)
  CSV.foreach("./products.csv") do |row|  
    if row.include?(name)
      return "#{row[0]}, #{row[1]}zł"
    end
  end
  return "We dont have #{name}"
end

def cheaper_products(value)
  CSV.foreach("./products.csv") do |row|  
    if row[0] == "Product"
      puts row.to_s
    elsif row[1].to_i < value
      puts "#{row[0]}, #{row[1]}zł"
    end
  end
end

def expensive_products(value)
  CSV.foreach("./products.csv") do |row| 
    if row[0] == "Product"
      puts row.to_s
    elsif row[1].to_i > value
      puts "#{row[0]}, #{row[1]}zł"
    end
  end
end

def exchange(exchange, currency)
  currency.upcase!
  File.new("products#{currency}.csv", "a+")
  CSV.foreach("./products.csv") do |row| 
    if row[0] == "Product"
      row[1] = "Price(#{currency})"
      CSV.open("products#{currency}.csv", "a+") do |file|
          file << row
        end
    elsif
      new_price = row[1].to_f / exchange
      row[1] = new_price.round(2)
      CSV.open("products#{currency}.csv", "a+") do |file|
        file << row
      end
    end 
  end
end

loop do
  puts " "
  puts menu
  print "What is your choice?: "
  answer = gets.chomp.to_i
  case answer
    when 1
      show_products
    when 2
      puts "What do you need?"
      name = gets.chomp
      puts find_product(name)
    when 3
      puts "Below what value you are looking for products ?"
      value = gets.chomp.to_i
      cheaper_products(value)
    when 4
      puts "Above what value you are looking for products ?"
      value = gets.chomp.to_i
      expensive_products(value)
    when 5
      puts "Put exchenge and currency: "
      print ":=> " 
      exchange = gets.to_i
      print ":=> " 
      currency = gets.chomp
      exchange(exchange, currency)
    when 6
      exit[0]
  end

end