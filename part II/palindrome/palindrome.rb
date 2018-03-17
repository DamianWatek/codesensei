# Palindrom – wyrażenie brzmiące tak samo czytane od lewej do prawej i od prawej do
# lewej. Przykładem palindromu jest: “Kobyła ma mały bok”.
# Napisz funkcję palindrome? , która otrzymuje ciąg znaków i zwraca wartość logiczną
# ( true / false ) w zależnośći czy dany ciąg jest palindromem.
# Np:

def palindrome?(string)
  str = string.downcase.split.join
  if str == str.reverse
    true
  else
    false
  end
end

puts palindrome?('Kobyła ma mały bok') #=> true
puts palindrome?('kajak') #=> true
puts palindrome?('kajak i wiosło') #=> false
puts palindrome?('Ile Roman ładny dyndał na moreli')