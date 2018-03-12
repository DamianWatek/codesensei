# Napisz metodę initials , która wypisuje inicjały osoby na podstawie jej pełnego imienia.
# Wszystkie znaki inicjałów powinny być pisane z dużej litery.


def initials(string)
  array_with_name = string.scan(/\w+/)
  sum = ""
  array_with_name.each do |item|
    sum += item[0]
  end
  sum.upcase
end


puts initials('Jan Kozlowski') #=> 'JK'
# puts result_1

puts initials('Jan Krzysztof Rakoczy') #=> 'JKR'
# puts result_2

puts initials('marcin nowak') #=> 'MN'
# puts result_3