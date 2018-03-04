# Napisz program wyliczający największy wspólny dzielnik dwóch liczb używając


def nwd(a, b)
  while b != 0
    c = a % b
    a = b
    b = c
    puts "a: #{a} | b: #{b} | c: #{c}"
  end 
  puts "NWD = #{a}"
end

nwd(1989, 867)