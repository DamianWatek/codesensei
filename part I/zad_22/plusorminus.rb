# 22. Algorytm, który wczytuje od użytkownika liczby tak długo aż poda 0. Na końcu wypisuje komunikat "Wystąpiła liczba ujemna" jeśli chociaż raz podana została liczba ujemna oraz komunikat "Wystąpiła liczba dodatnia" jeśli chociaz raz podana została liczba dodatnia.
# IN:   liczby n
# OUT:  komunikat - jeden z dwóch lub oba

n = gets.to_i

while n != 0
  if n > 0
    plus = n
  else
    minus = n
  end
  n = gets.to_i
end

if plus > 0 && minus < 0
  puts "Wystąpiła liczba dodatnia"
  puts "Wystąpiła liczba ujemna"
elsif minus < 0
  puts "Wystąpiła liczba ujemna"
else
  puts "Wystąpiła liczba dodatnia"
end