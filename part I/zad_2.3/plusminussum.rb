# 23. Algorytm, który wczytuje od użytkownika liczby tak długo aż poda 0. Na końcu wypisuje sumę liczb ujemnych oraz sumę liczb dodatnich z tych, które zostały wczytane. Np. dla liczb 6, 8, -2, 1, -3, 0 wypisze "Suma dodatnich: 15" i "Suma ujemnych: -5".
# IN:   liczby - n
# OUT:  Komunikat "Suma dodatnich: 15" i "Suma ujemnych: -5"

n = gets.to_i
sum_plus = 0
sum_minus = 0

while n != 0
  if n > 0
    sum_plus = sum_plus + n
  else
    sum_minus = sum_minus + n
  end
  # puts "sum_plus: #{sum_plus}, sum_minus: #{sum_minus} "
  n = gets.to_i
end

puts "Suma dodatnich: #{sum_plus}"
puts "Suma ujemnych: #{sum_minus}"
