# 12. Algorytm, który wczytuje liczbę i wypisuje "Liczba jest parzysta" jeśli podana liczba jest parzysta lub "Liczba jest nieparzysta" jeśli podana liczba jest nieparzysta (do sprawdzenia parzystości liczby wykorzystaj działanie a % b zwracający resztę z dzielenia liczby a przez b).
# IN:   liczba x
# OUT:  komunikat - czy liczba jest parzysta czy nie

puts "Podaj liczbę i sprawdź czy jest parzysta: "
x = gets.to_i

if x % 2 == 0
  puts "Liczba #{x} jest parzysta"
else
  puts "Liczba #{x} jest nieparzysta"
end