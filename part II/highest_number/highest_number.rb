# Napisz funkcję, ktora przyjmie liczbę całkowitą i pozamienia jej cyfry miejscami w taki
# sposób, aby utworzyć jak najwyższą liczbę.
# Np:

def highest_number(number)
  arr = number.to_s
  result = arr.split("").sort { |x, y| y <=> x }.join
  result
end
puts highest_number(132) #=> 321
puts highest_number(1464) #=> 6441
puts highest_number(165423) #=> 654321