# 18. Algorytm, który wczytuje liczby tak długo aż nie zostanie podana liczba 0, a następnie wypisuje sumę liczb parzystych.
# IN:   liczby dopóki niepodamy 0
# OUT:  suma liczb parzystych

number = gets.to_i

loop do 
  puts number
  new_number = gets.to_i
  break if new_number == 0
  
  if number % 2 != 0
    number = new_number 
  elsif number % 2 == 0 && new_number % 2 == 0 # Tutaj raczej napewno mam błąd :0 wyszło przy rysowaniu schematu
    number = number + new_number
  end
end