# 20. Algorytm, który wczytuje liczbę i wypisuje jej sumę cyfr (np. dla liczby 378 wypisuje 18). Skorzystaj z operacji % 10 aby pobrać wartość ostatniej cyfry.
# IN:   liczba - x
# OUT:  suma cyfr liczby (378 wypisze 18)

x = gets.to_i
sum = 0

while x != 0
  last_number = x % 10
  x = x / 10
  sum = sum + last_number
end
puts sum
