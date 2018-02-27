# 5. Algorytm, który wczytuje dystans (w km) do pokonania i wyliczający zużycie paliwa (w l) i koszt (w zł) przejechania go. Załóż, że samochód spala 6.5 litra benzyny na 100 km. 1 litr benzyny kosztuje 4.30zł. Np. dla dystansu 150km algorytm wypisze "Zużycie paliwa: 9.75l" oraz "Koszt: 41,925zł".
# IN:   dystans do pokonania - x
# OUT:  komunikat o zużyciu paliwa i koszcie

puts "Podaj dystans do przejechania:"

x = gets.to_i
zp = (x * 6.5) / 100
cost = zp * 4.30

puts "Zużycie paliwa: #{zp}l"
puts "Koszt: #{cost}zł"
