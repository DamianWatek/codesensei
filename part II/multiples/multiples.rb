# Napisz metodę, która dla podanego argument n znajdzie wszystkie liczby całkowite w
# przedziale od 0 do n, które są podzielne przez 3 lub 5 i zwróci sumę tych liczb.
# Np:

def multiples(n)
  range = 1..n
  sum = 0
  range.each do |i|
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  sum
end


puts multiples(10) #=> 33
puts multiples(20) #=> 98