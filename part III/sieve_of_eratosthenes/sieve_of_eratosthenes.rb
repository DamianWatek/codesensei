# Napisz program wyszukujący wszystkie liczby pierwsze z zadanego przedziału jako
# argumenty wywołania metodą Sita Eratostenesa
# $ ruby sieve_of_eratosthenes.rb 1 10
# Prime numbers: 2, 3, 5, 7

def sieve_of_eratosthenes(n) 
  # Tablica wartości logicznych od 0 do n, 0 i 1 są false czyli 0
  nums = Array.new(n + 1, 1)
  nums[0] = nums[1] = 0

  # Zakres od 2 do kwadrat liczby n, jeśli n = 10 to [2, 3]
  (2..Math.sqrt(n)).each do |sieve|

    # sieve = 2, jeśli nums[2] == 1 to:
    if nums[sieve] == 1

      #  2 * 2 = 4, w step nasze n to limit(10). Step zaczyna się od 4 i idzie co sieve czyli 2
      # Za pierwszym razem [4, 6, 8, 10], each na tej tablicy zamienia każdą z tej wartości na 0 w tablicy nums
      (2 * sieve).step(n, sieve).each { |x| nums[x] = 0 }

      # po wykonaniu tego na sieve = 2, each bierze kolejną wartość z zakresu [2, 3] czyli 3
    end
  end
  # Wybiera z zakresu od 2 do n (10), liczby x jeśli nums[x] == 1
  (2..n).select { |x| nums[x] == 1 }
end

puts sieve_of_eratosthenes(10)