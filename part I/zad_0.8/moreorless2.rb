# 8. Algorytm, który wczytuje 3 liczby i wypisuje największą z nich (np. dla liczb 6, 8, 3 wypisze 8, dla 9, 3, 1 wypisze 9, a dla liczb 3, 5, 5 wypisze 5).
# IN:   trzy liczby x, y, z
# OUT:  Wypisuje największą z nich

puts "Podaj trzy liczby: "

x = gets.to_i
y = gets.to_i
z = gets.to_i

if x > y && x > z
  n = x
elsif y > z
  n = y
else
  n = z
end
puts "#{n} jest największe"