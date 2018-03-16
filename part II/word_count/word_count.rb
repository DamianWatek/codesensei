# Napisz program, który policzy ilość wystąpień poszczególnych słów w zadanym jako
# argument stringu. Zignoruj wielkość liter.
# Np:

def word_count(string)
  word_array = string.downcase.split
  hash = {}
  word_array.each do |item|
    hash[item] = hash[item].to_i + 1
  end
  hash
end

puts word_count('foo Foo bar bar Bar') #=> { "foo" => 2, "bar" => 3 }
puts word_count('Losowy ciąg znaków ciąg') #=> { "losowy" => 1, "ciąg" => 2, "znaków" => 1}