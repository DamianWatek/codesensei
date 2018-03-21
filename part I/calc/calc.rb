# Napisz program będący prostym kalkulatorem, z którym interakcja wygląda jak na
# poniższym przykładzie:
# What is your choice?: 1
#    4
#   Enter second number: 9
#   ==> 4 + 9 = 13


def menu
  "Choose operation:
  1. Add numbers
  2. Subtract numbers
  3. Multiply numbers
  4. Divide numbers
  5. Quit"  
end

def add
  print "Enter first number: "
  a = gets.chomp.to_i
  print "Enter second number: "
  b = gets.chomp.to_i
  return "==> #{a} + #{b} = #{a + b}"
end

def subtract
  print "Enter first number: "
  a = gets.chomp.to_i
  print "Enter second number: "
  b = gets.chomp.to_i
  return "==> #{a} - #{b} = #{a - b}"
end

def multiply
  print "Enter first number: "
  a = gets.chomp.to_i
  print "Enter second number: "
  b = gets.chomp.to_i
  return "==> #{a} * #{b} = #{a * b}"
end

def divide
  print "Enter first number: "
  a = gets.chomp.to_i
  print "Enter second number: "
  b = gets.chomp.to_i
  if a == 0 || b == 0
    return "Error cannot divide by 0"
  else
    return "==> #{a} / #{b} = #{a / b}"
  end
end


loop do
  puts " "
  puts menu
  print "What is your choice?: "
  answer = gets.chomp.to_i

  break if answer == 5

  if answer == 1
    puts add
  elsif answer == 2
    puts subtract
  elsif answer == 3
    puts multiply
  elsif answer == 4
    puts divide
  end

end
puts "Bye, bye!"