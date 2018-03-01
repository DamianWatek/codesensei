# 21. Algorytm, który wczytuje liczbę n, liczy i wypisuje wartość funkcji silnia dla niej. Funkcja silnia(n) to iloczyn kolejnych liczb 1 * 2 * ... * n (np. dla 6 silnia to 720).
# IN:   liczba - n 
# OUT:  iloczyn kolejnych liczb

n = gets.to_i

result = 1
i = 0
while i < n 
  result = result * (i + 1)
  i = i + 1
end
puts result


# def factorial(n)
#   result = 1
#   i = 0
#   while i < n 
#     result = result * (i + 1)
#     i = i + 1
#   end
#   result
# end 
# puts factorial(6)