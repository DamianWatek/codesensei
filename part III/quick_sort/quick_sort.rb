# Napisz program sortujący zadaną jako argumenty wywołania tablicę liczb metodą quick sort
# $ ruby quick_sort.rb 74 77 64 19 43 47 77 66 47 60 7 97 71 87 95 79
# 7 19 43 47 47 60 64 66 71 74 77 77 79 87 95 97

def quick_sort(left, right, array)
  i = left
  k = right
  piwot = array[(i + k) / 2]
  while i <= k
    while array[i] < piwot
      i += 1
    end
    while array[k] > piwot
      k -= 1
    end
    if i <= k
      temp = array[i]
      array[i] = array[k]
      array[k] = temp
      i += 1
      k -= 1
    end
  end
  if k > left
    quick_sort(left, k, array)
  end
  if i < right
    quick_sort(i, right, array)
  end
end
arr = [74, 77, 64, 19, 43, 47, 77, 66, 47, 60, 7, 97, 71, 87, 95, 79]
quick_sort(0, arr.length - 1, arr)
puts arr.to_s
