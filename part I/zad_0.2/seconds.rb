# 2. Algorytm wczytujący liczbę dni, a następnie liczący i wypisujący liczbę sekund w tych dniach (np. dla 7 wypisze 10080)
# IN:   Liczba dni - x
# OUT:  Liczba sekund w x

puts "Podaj liczbę dni: "
x = gets.to_i

calc_sec = x * 86400
puts "#{x} dni to #{calc_sec} sekund"