# 19. Algorytm, który wczytuje liczbę n, a następnie liczy i wypisuje sumę kwadratów liczb 1..n (1 + 4 + 9 + ... + n^2).
# IN:   liczba - n
# OUT:  suma kwadratów

n = gets.to_i
i = 0
temp = 0
sum = 0

while i < n
  temp = sum
  i = i + 1
  k = i * i
  sum = temp + k
end
puts sum