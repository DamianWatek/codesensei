# 18. Algorytm, który wczytuje liczby tak długo aż nie zostanie podana liczba 0, a następnie wypisuje sumę liczb parzystych.
# IN:   liczby dopóki niepodamy 0
# OUT:  suma liczb parzystych

n = gets.to_i
sum = 0

while n != 0
  if n % 2 == 0
    sum = sum + n
  end 
  # puts "sum: #{sum}"
  n = gets.to_i
end
puts sum
