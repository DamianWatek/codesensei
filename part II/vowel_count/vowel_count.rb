# Napisz funkcję obliczającą ilość samogłosek w podanym ciągu znaków. Jako samogłoski
# uznajemy: a, e, i, o, u oraz y
# np:


def vowel_count(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  sum = 0
  vowels.each do |v|
    string.each_char do |i|
      if v == i
        sum += 1
      end
    end
  end
  sum
end

puts vowel_count("test") # #=> 1
puts vowel_count("foobar") #=> 3