# 1. Algorytm wczytujący długość boku kwadratu i wypisujący jego pole oraz obwód.
# IN:   x - bok
# OUT:  Pole - x * x
#       Obwód - 4 * x

puts "Podaj długość boku kwadratu: "
x = gets.to_i

squer_area = x * x
puts "Pole kwadratu to #{squer_area}"

squer_perimeter = 4 * x
puts "Obówd kwadratu to #{squer_perimeter}"