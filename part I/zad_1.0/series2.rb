# 10. Algorytm wczytujący 3 liczby i sprawdzający czy są one ułożone w kolejności rosnącej (każda kolejna musi być większa od poprzedniej). Jeśli tak to wypisuje "Ciąg jest rosnący", w przeciwnym przypadku "Ciąg nie jest rosnący".
# IN:   trzy liczby x,y,z
# OUT:  komunikat

puts "Podaj trzy liczby: "

x = gets.to_i
y = gets.to_i
z = gets.to_i

if x < y && y < z
  puts "Ciąg jest rosnący"
elsif x > y && y > z
  puts "Ciąg jest malejący"
else
  puts "Złe wartości"
end