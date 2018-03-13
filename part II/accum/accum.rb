# Napisz funkcję accum , która działa w następujący sposób:

def accum(string)
  array = string.split(//)
  result = array.map.with_index { |x, i| x * (i + 1) }.map { |x| x.capitalize }
  result.join("-")
end

puts accum("abcd") #=> "A-Bb-Ccc-Dddd"
puts accum("RqaEzty") #=> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
puts accum("cwAt") #=> "C-Ww-Aaa-Tttt"