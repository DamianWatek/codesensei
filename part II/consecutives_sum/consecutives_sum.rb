# Napisz funkcję consecutives_sum , która dla trzymanej tablicy liczb obliczy sumę kolejnych liczb o tej samej wartości.
# Funkcja powinna zwracać tablice tych sum.
# Przykładowo:

def consecutives_sum(array)
  sum = 0
  i = 0
  result = []
  while i < array.length
    sum += array[i]
    if array[i] != array[i + 1]
      result << sum
      sum = 0
    end
    i += 1
  end
  result.to_s
end

puts consecutives_sum([1, 4, 4, 4, 0, 4, 3, 3, 1]) #=> [1, 12, 0, 4, 6, 1]
puts consecutives_sum([1, 1, 7, 7, 3]) #=> [2, 14, 3]
puts consecutives_sum([-5, -5, 7, 7, 12, 0]) #=> [-10, 14, 12, 0]