# 9. Algorytm wczytujący 2 liczby i sprawdzający czy są one ułożone w kolejności rosnącej (każda kolejna musi być większa od poprzedniej). Jeśli tak to wypisuje "Ciąg jest rosnący", w przeciwnym przypadku "Ciąg nie jest rosnący".
# IN:   dwie liczby x i y   
# OUT:  komunikat o ciagu

puts "Podaj dwie liczby: "

x = gets.to_i
y = gets.to_i

if x < y 
  puts "Ciag jest rosnący"
else
  puts "Ciag nie jest rosnący"
end
