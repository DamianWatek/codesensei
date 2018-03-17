# Rok jest przestępny jeśli:
#  jest podzielny przez 4, ale niepodzielny przez 100, lub
#  jest podzielny przez 400
# Napisz funkcję, która sprawdza czy rok jest przestępny.
# Np:

def leap_year?(num)
  if num % 4 == 0 && !(num % 100 == 0)
    return true
  elsif num % 400 == 0
    return true
  else
    false
  end
end

puts leap_year?(2004) # => true
puts leap_year?(2000) # => true
puts leap_year?(2100) # => false