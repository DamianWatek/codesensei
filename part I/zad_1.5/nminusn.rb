# 15. Algorytm, który wczytuje liczbę n i wypisuje kolejno liczby 1, -1, 2, -2, 3, -3, ..., n, -n (np. dla n = 4 wypisze 1, -1, 2, -2, 3, -3, 4, -4). Jeśli na wejściu podano liczbę < 1 należy wypisać komunikat "Liczba musi być > 0" i zakończyć algorytm.
# IN:   liczba - n
# OUT:  liczby do n / dodatnie i ujemne

puts "Podaj liczbę:"
n = gets.to_i
i = 0

if n < 0
  puts "Liczba musi być > 0"
else
  while i < n
    i = i + 1
    puts i
    puts -i
  end
end