# Zaimplementuj funkcję, która wypisze, który z graczy wygrywa w grze papier, kamień,
# nożyce. Funkcja powinna przyjmować dwa argumenty odpowiadające wyborom graczy i
# działać w następujący sposób:

def rps(player_one, player_two)
  # REMIS
  if player_one == player_two
    return "Remis!"
  # ROCK VS PAPER
  elsif player_one == 'rock'
    if player_two == 'paper' 
      return "Gracz 2 wygrywa"
    else
      return "Gracz 1 wygrywa"
    end
  # PAPER VS SCISSORS
  elsif player_one == 'paper'
    if player_two == 'scissors'
      return "Gracz 2 wygrywa"
    else
      return "Gracz 1 wygrywa"
    end
  # SCISSORS VS ROCK
  elsif player_one == 'scissors'
    if player_two == 'rock'
      return "Gracz 2 wygrywa"
    else
      return "Gracz 1 wygrywa"
    end
  end
end

puts rps('scissors', 'paper') #=> 'Gracz 1 wygrywa'
puts rps('rock', 'paper') #=> 'Gracz 2 wygrywa'
puts rps('paper', 'paper') #=> 'Remis'