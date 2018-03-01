# 20. Algorytm, który wczytuje liczbę i wypisuje jej sumę cyfr (np. dla liczby 378 wypisuje 18). Skorzystaj z operacji % 10 aby pobrać wartość ostatniej cyfry.
# IN:   liczba - x
# OUT:  suma cyfr liczby (378 wypisze 18)

x = gets.to_i
temp = 0
sum = 0

while x != 0
  temp = sum
  last_number = x % 10
  new_number = x - last_number
  x = new_number / 10
  sum = last_number + temp
end
puts sum