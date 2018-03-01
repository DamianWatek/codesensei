# 14. Algorytm, który wczytuje liczbę n i wypisuje na ekran kolejne parzyste liczby z zakresu 2..n. Jeśli na wejściu podano liczbę < 2 należy wypisać komunikat "Liczba musi być > 1" i zakończyć algorytm.
# IN:   liczba - n
# OUT:  liczby parzyste z zakresu od 2 do n

puts "Podaj liczbę:"
n = gets.to_i
i = 0

if n < 2
  puts "Liczba musi być > 1"
else
  while i < n - 1
    i = i + 2
    puts i
  end
end