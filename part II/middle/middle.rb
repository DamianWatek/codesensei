# Napisz funkcję, która znajdzie i zwróci środkowy znak w stringu. Jeśli długość stringa
# jest liczbą parzystą zwróć dwa środkowe znaki.
# np:

def middle(string)
  char = string.length / 2
  if string.length % 2 == 0
    return string[char - 1] += string[char] 
  end
  string[char]
end

puts middle("abcd") # #=> "b"
puts middle("middle") #=> "dd"
puts middle("tesTing") #=> "T"