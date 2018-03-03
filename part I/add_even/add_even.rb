# Napisz funkcję, która liczy sumę parzystych liczb z zakresu od 1..n. Spróbuj stwórzyć
# kilka wersji:
# • korzystając z wybranej pętli, np. while
# • korzystając z metod Range#step i Enumerable#sum
# • wyprowadzając/znajdując wzór na sumę takich liczb (podpowiedź: jest to ciąg
# arytmetyczny)

def addEven(n)
  i = 0
  sum = 0
  temp = 0
  while i < n
    
    i = i + 1
    
    if i % 2 == 0
      temp = sum
      sum = temp + i
    end
  end  
  puts sum
end

addEven(11)
