# Napisz funkcję, która dokona konwersji liczby w zapisie arabskim na liczbę w zapisie
# rzymskim.
# Funkcja powinna byc w stanie skonwertować liczby od 1 do 3000.

require "pry"
def to_roman(number)
  hash_roman = { 
    1000 => "M",
    900 => "CM", 
    500 => "D",
    400 => "CD",  
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX", 
    5 => "V",
    4 => "IV",
    1 => "I" 
  }
  roman = ""
  binding.pry
  hash_roman.map do |value, letter|
    roman << letter*(number / value)
    number = number % value
  end
  roman
end

puts to_roman(5) #=> 'V'
puts to_roman(37) #=> 'XXXVII'
puts to_roman(924) #=> 'CMXXIV'