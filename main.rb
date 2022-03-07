require "./game"
require "./players"
require "./questions"

puts "--- WELCOME TO THE TWO-O-PLAYER MATH GAME ---"

p1 = Player.new
p2 = Player.new
game = Game.new(p1, p2)

# Use WHILE loop 
while game.p1.lives > 0 && game.p2.lives > 0

  puts "------ NEW TURN -------"
  question = Question.new

  if game.current_p == p1
    puts "Player 1: " + question.math_question
  else
    puts "Player 2: " + question.math_question
  end

  # Ask current player to guess answer 
  response = gets.chomp

  # Evaluate if player guessed right/wrong
  if response.to_i == question.correct_answer
    puts "Correct!"
    game.new_turn
  else 
    puts "Wrong!"
    game.current_p.wrong
    game.new_turn
  end

  # Print current score 
  game.current_score
  
end

# End game if one player has 0 lives 
game.announce_winner
puts "--------- GAME OVER -----------"
puts "---------- GOODBYE ------------"

