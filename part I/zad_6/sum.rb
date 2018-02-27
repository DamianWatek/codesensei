# 6. Algorytm, który wczytuje 2 liczby, liczący ich sumę i różnicę i wypisujący komunikat "Suma większa od różnicy" jeśli suma jest większa, "Suma jest mniejsza od różnicy" jeśli suma jest mniejsza lub "Suma jest równa różnicy" jeśli obie są sobie równe.
# IN:   dwie liczby x i y
# OUT:  komunikat który zależy od działania na x i y

puts "Podaj dwie liczby: "

x = gets.to_i
y = gets.to_i

total = x + y
diff = x - y

if total == diff
  puts "Suma jest równa różnicy"
elsif total > diff 
  puts "Suma większa od różnicy"
else
  puts "Suma jest mniejsza od różnicy"
end


