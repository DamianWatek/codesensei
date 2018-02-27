# 23. Algorytm, który wczytuje od użytkownika liczby tak długo aż poda 0. Na końcu wypisuje sumę liczb ujemnych oraz sumę liczb dodatnich z tych, które zostały wczytane. Np. dla liczb 6, 8, -2, 1, -3, 0 wypisze "Suma dodatnich: 15" i "Suma ujemnych: -5".
# IN:   liczby - n
# OUT:  Komunikat "Suma dodatnich: 15" i "Suma ujemnych: -5"

n = gets.to_i
sumP = 0
sumM = 0

while n != 0
  if n > 0
    tempP = sumP
    sumP = tempP + n
  else
    tempM = sumM
    sumM = tempM + n
  end
  puts "sumP: #{sumP}, sumM: #{sumM} "
  n = gets.to_i
end

puts "Suma dodatnich: #{sumP}"
puts "Suma ujemnych: #{sumM}"
