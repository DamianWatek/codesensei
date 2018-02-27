# 17. Algorytm, który wczytuje liczby tak długo aż nie zostanie podana liczba 0, a następnie wypisuje sumę tych liczb.
# IN:   liczby dopóki nie podamy 0
# OUT:  Suma liczb podanych wcześniej

number = gets.to_i

loop do
  new_number = gets.to_i
  break if new_number == 0
  number = new_number + number
end 
puts number