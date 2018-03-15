# Pangram to zdanie, w którym przynajmniej raz pojawia się każda litera alfabetu.
# Napisz metodę, która sprawdzi czy podany ciąg znaków jest pangramem dla języka
# polskiego.
# Np:
require "pry"
def pangram?(string)
  range = ('a'..'z').to_a + [ 'ą', 'ć', 'ę', 'ł', 'ń', 'ó', 'ś', 'ź', 'ż' ] - ["q", "x", "v"]
  array = []
  range.each do |i|
    if (string.downcase).include?(i)
      array << i
    end
  end
  range == array
end

puts pangram?('Dość błazeństw, żrą mój pęk luźnych fig') #=> true
puts pangram?('Losowy ciąg znaków') #=> false
puts pangram?('Mknął boży puch. Jeść stóg z lędźwi Frań?') 
puts pangram?('W Mińsku lżą naftę Jóź. Gość brzydł. Pech!') 