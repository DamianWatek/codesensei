# Napisz program, który będzie weryfikował poprawność numeru PESEL oraz wyświetlał
# informacje o dacie urodzenia i płci na jego podstawie. Program powinien przyjmować
# numer pesel jako parametr.

# Pesel 44 05 14 014 5 8 jest prawidłowy.
# Informacje o peselu:
# - płeć: mężczyzna
# - data urodzenia: 14-05-1944

# 9×a + 7×b + 3×c + 1×d + 9×e + 7×f + 3×g + 1×h + 9×i + 7×j

def pesel(pesel)
  arr = pesel.digits.reverse
  # arr = [9, 0, 0, 8, 1, 6, 1, 4, 6, 3, 2]

  sum = 9 * arr[0] + 7 * arr[1] + 3 * arr[2] + 1 * arr[3] + 9 * arr[4] + 7 * arr[5] + 3 * arr[6] + 1 * arr[7] + 9 * arr[8] + 7 * arr[9]
  cor = sum % 10

  if cor != arr[-1]
    puts "Pesel jest nie prawidłowy"
  else
    puts "Pesel #{pesel} jest prawidłowy"
    puts "Informacje o peselu:"
    if arr[9] % 2 == 0
      puts  "- płeć: kobieta"
    else
      puts  "- płeć: mężczyzna"
    end 
    puts "- data urodzenia: #{arr[4]}#{arr[5]}-#{arr[2]}#{arr[3]}-19#{arr[0]}#{arr[1]}" 
  end 
end

pesel(90081614632)
