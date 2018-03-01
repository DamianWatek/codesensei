# 3. Algorytm wczytujący numer miesiąca (1 to styczeń, 2 luty, ..., 12 grudzień) i wypisujący liczbę dni w podanym miesiącu (załóż że luty ma zawsze 28 dni)

# IN:   numer miesiąca 
# OUT:  liczba dni w danym miesiącu


month_array = ["styczeń 31", "luty 28", "marzec 31", "kwieceń 30", "maj 31", "czerwiec 30", "lipiec 31", "sierpień 31", "wrzesień 30", "październik 31", "listopad 30", "grudzień 31" ]

puts "Sprawdź ile miesiąc ma dni. Podaj numer miesiąca: "
x = gets.to_i
z = x - 1

if x == 0 || x > 12
  puts "Wybierz od 1 do 12"
else
  puts month_array[z]
end

 