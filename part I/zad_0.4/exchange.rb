# 4. Algorytm wczytujący ilość pieniędzy w $, kurs kupna dolara w zł i zamieniający podaną wartość w $ na zł. Np. dla 20$ i kursu 3.60zł algorytm wypisze 72zł.
# IN: ilość pieniędzy w dolarach
# OUT: komunikat o ilości pieniędzy w ZŁ po kursie 3.60zł

puts "Kurs: 1$ = 3.60zł. Ile $ chcesz wymienić? Podaj kwotę: "

x = gets.to_i
z = x * 3.6

puts "#{z.round}zł"


