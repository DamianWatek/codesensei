# 24. Algorytm wczytujący dwie liczby i wypisujący największy ich wspólny dzielnik wykorzystując algorytm Euklidesa (https://pl.wikipedia.org/wiki/Algorytm_Euklidesa).
# IN:   dwie liczby - x, y
# OUT:  wypisuje NWD

x = gets.to_i
y = gets.to_i

while x != y
  if y > x
    y = y - x
  else 
    x = x - y
  end 
  puts x
end 
puts "NWD = #{x}"