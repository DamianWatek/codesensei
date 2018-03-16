# Napisz funkcję, która przyjmie dowolną liczbę tablic (o tej samej długości) i zwróci jedną
# tablicę składającą się z wartości średnich elementów na poszczególnych indeksach
# przyjętych tablic.
# Np:

def avg_array(*arrays)
  result = []
  arr_trans = arrays.transpose
  arr_trans.map do |item|
    result << (item.sum(0.0)) / arrays.length
  end
  result.to_s
end

puts avg_array([1, 3, 5], [3, 5, 7]) #=> [2, 4, 6]
puts avg_array([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17]) #=> [8, 19.75, 11.25, 13.5]