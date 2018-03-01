# 13. Algorytm, który wczytuje liczbę n i wypisuje na ekran kolejne liczby 1..n. Jeśli na wejściu podano liczbę < 1 należy wypisać komunikat "Liczba musi być > 0" i zakończyć algorytm.
# IN:   liczba - x
# OUT:  Jeśli n < 1 - komunikat / liczby od 1 do n

puts "Podaj liczbę: "
n = gets.to_i
i = 0 

if n < 1
  puts "Liczba musi być > 0"
else
  while i < n
    i = i + 1
    puts i
  end
end