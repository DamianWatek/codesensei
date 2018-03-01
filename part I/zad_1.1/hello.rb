# 11. Algorytm, który wczytuje liczbę n i wypisujący n razy komunikat "Witaj".
# IN:   liczba n   
# OUT:  komunikat wypisany n razy

puts "Podaj liczbę ile razy terminal ma się przywitać :)"

n = gets.to_i
i = 0

while i < n
  puts "Hello!"
  i = i + 1
end