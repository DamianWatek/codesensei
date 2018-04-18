
require_relative 'prod'
list = ProductList.new("products.csv")
require 'pry'
# Szukanie produktów
if ARGV[0] == '-f'
  product_array = list.find(ARGV[1])
  if product_array
    puts "#{product_array[0]} #{product_array[1]}zł"
  else
    puts "No #{ARGV[1]} found!"
  end
# Szukanie produktów droższych od ARGV[1] 
elsif ARGV[0] == '-gt'
  result = list.collect(:more_expensive, ARGV[1].to_f)
  if result.empty?
    puts "None found"
  else
    result.each do |row|
      printf("%-10s %10s zł \n", row[0], row[1])
    end
  end
# Szukanie tańszych produktów od ARGV[1]
elsif ARGV[0] == '-lt'
  result = list.collect(:cheaper, ARGV[1].to_f)
  if result.empty?
    puts "None found"
  else
    result.each do |row|
      printf("%-10s %10s zł \n", row[0], row[1])
    end
  end
# Konwersja do innej waluty
elsif ARGV[0] == '-c'
  list.exchange(ARGV[1].to_f, ARGV[2], ARGV[3])
else 
  puts "Usage: ruby cli.rb [-f|-gt|-lt] VALUE"
end

