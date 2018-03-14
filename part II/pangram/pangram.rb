# Pangram to zdanie, w którym przynajmniej raz pojawia się każda litera alfabetu.
# Napisz metodę, która sprawdzi czy podany ciąg znaków jest pangramem dla języka
# polskiego.
# Np:

def pangram?
  range = ('a'..'z').to_a
  puts range
end
pangram?
# pangram?('Dość błazeństw, żrą mój pęk luźnych fig') #=> true
# pangram?('Losowy ciąg znaków') #=> false