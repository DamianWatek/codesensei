# Napisz funkcję accum , która działa w następujący sposób:

def accum(string)
  result = string.split(//)
  
  puts result.to_s
  result[0]
end

puts accum("abcd") #=> "A-Bb-Ccc-Dddd"
accum("RqaEzty") #=> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") #=> "C-Ww-Aaa-Tttt"