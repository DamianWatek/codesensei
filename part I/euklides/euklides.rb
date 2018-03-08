# Napisz program wyliczający największy wspólny dzielnik dwóch liczb używając


def nwd(a, b)
  while b != 0
    c = a % b
    a = b
    b = c
  end 
  a
end

puts nwd(1989, 867)