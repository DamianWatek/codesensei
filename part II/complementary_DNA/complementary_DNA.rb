# Komplementarne DNA
# Zasada komplementarności DNA mówi, że znając sekwencję pojedyńczego łańcucha
# DNA możemy wywnioskować sekwencję jego sąsiedniej nici.
# Wynika to z faktu, iż zasady azotowe, z których DNA jest zbudowane łączą się w pary
# zawsze w ten sam sposób, to znaczy Adenina (A) z Tyminą (T), a Cytozyna z Guaniną (G).
# Napisz funckję, która przyjmie ciąg znaków reprezentujący sekwencję DNA i zwróci sekwencję komplementarną.
# Np:

def complementary_DNA(string)
  dna = ""
  string.each_char do |i|
    if i == "A"
      dna += "T"
    elsif i == "T"
      dna += "A"
    elsif i == "C"
      dna += "G"
    elsif i == "G"
      dna += "C"
    end
  end
  dna
end


puts complementary_DNA("ATTA") #=> "TAAT"
puts complementary_DNA("CGGC") #=> "GCCG"
puts complementary_DNA("ACGTTAGTTA") #=> "TGCAATCAAT"