# 16. Algorytm, który wczytuje liczbę n i wypisuje kolejno liczby 1, -n, 2, -n+1, 3, -n+2, ..., n, -1 (np. dla n = 3 wypisze 1, -3, 2, -2, 3, -1). Jeśli na wejściu podano liczbę < 1 należy wypisać komunikat "Liczba musi być > 0" i zakończyć algorytm.
# IN:   liczba n
# OUT:  kolejno liczby 1, -n, 2, -n+1, 3, -n+2

puts "Podaj liczbę:"
n = gets.to_i

if n < 1
  puts "Liczba musi być > 0"
else
  i = 0
  while i < n
    puts i + 1
    puts -n + i
    i = i + 1
  end
end