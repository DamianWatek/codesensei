# Załóż, że '#' działa jak klawisz backspace w ciągu znaków. Oznacza to że string "a#bc#d" jest równy "bd" 

# "abc#d##c" jest równy "ac"
# "abc##d######" jest równy ""
# "######" jest równy ""
# "" jest równy ""
 
# Twoim zdaniem jest napisanie funkcji, która przetwarza string według powyższej reguły.

def backspace(string)
  string.each_char do |i|
    
  end
end

backspace("a#bc#d")
backspace("abc#d##c")
backspace("abc##d######")
backspace("######")