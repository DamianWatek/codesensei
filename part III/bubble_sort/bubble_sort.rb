# Napisz program sortujący zadaną jako argumenty wywołania tablicę liczb metodą sortowania bąbelkowego
# $ ruby bubble_sort.rb 74 77 64 19 43 47 77 66 47 60 7 97 71 87 95 79
# 7 19 43 47 47 60 64 66 71 74 77 77 79 87 95 97


def bubble_sort(array)
  n = array.length - 1
  i = 0
  arr = []
  while i < n
    j = 0 
    while j < n
      if array[j] > array[j + 1]
        array[j], array[j + 1] = array[ j + 1], array[j]
      end
      j += 1
    end
    i += 1
  end
  puts array.to_s
end

bubble_sort([74, 77, 64, 19, 43, 47, 77, 66, 47, 60, 7, 97, 71, 87, 95, 79])