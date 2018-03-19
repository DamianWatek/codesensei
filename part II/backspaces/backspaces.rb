# Załóż, że '#' działa jak klawisz backspace w ciągu znaków. Oznacza to że string "a#bc#d" jest równy "bd" 

# "abc#d##c" jest równy "ac"
# "abc##d######" jest równy ""
# "######" jest równy ""
# "" jest równy ""
 
# Twoim zdaniem jest napisanie funkcji, która przetwarza string według powyższej reguły.

def backspaces(string)
  array = string.split("")
  while array.include?("#")
    i = array.index("#")
    array.delete_at(i)
    array.delete_at(i - 1)
  end
  array.join
end

puts backspaces("a#bc#d")
puts backspaces("abc#d##c")
puts backspaces("abc##d######")
puts backspaces("######")