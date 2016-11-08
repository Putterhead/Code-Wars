def rps(p1, p2)
  @results = {
  'rock/paper' => "Player 2 won!",
  'rock/scissors' => "Player 1 won!",
  'paper/scissors' => "Player 2 won!",
  'paper/rock' => "Player 1 won!",
  'scissors/paper' => "Player 1 won!",
  'scissors/rock' => "Player 2 won!",
  'rock/rock' => "Draw!",
  'scissors/scissors' => "Draw!",
  'paper/paper' => "Draw!"
  }
  
  @results["#{p1}/#{p2}"]
end

# An alternative solution that I liked
def rps(p1, p2)
  return 'Player 1 won!' if p1 == 'scissors' && p2 == 'paper'
  return 'Player 1 won!' if p1 == 'paper' && p2 == 'rock'
  return 'Player 1 won!' if p1 == 'rock' && p2 == 'scissors'
  return 'Draw!' if p1 == p2
  # Otherwise player 2 wins...
  'Player 2 won!'
end