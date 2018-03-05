# 7. Algorytm, który wczytuje 2 liczby i wypisuje największą z nich (np. dla liczb 6, 8 wypisze 8, dla liczb 9, 1 wypisze 9, a dla liczb 3, 3 wypisze 3).
# IN:   dwie liczby x i y
# OUT:  liczbe x lub y 

puts "Podaj dwie liczby: "

x = gets.to_i
y = gets.to_i

if x >= y
  puts x
else
  puts y
end