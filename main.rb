require './player.rb'
require './question.rb'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
round = 1

while player1.lives >= 0 && player2.lives >= 0
  if player1.lives == 0
    puts "Player 2 wins with #{player2.lives}/3 lives left."
    break
  elsif player2.lives == 0
    puts "Player 1 wins with #{player1.lives}/3 lives left."
    break
  end

  current_question = Question.new
  if round % 2 == 0
    puts "#{player2.name}, " + current_question.question
    answer = gets.chomp.to_i
    if current_question.answer == answer
      puts "Correct! #{player2.lives}/3 lives left."
    else
      player2.lose_life
      puts "Wrong, the answer is #{current_question.answer}! #{player2.lives}/3 lives left."
    end
  else
    puts "#{player1.name}, " + current_question.question
    answer = gets.chomp.to_i
    if current_question.answer == answer
      puts "Correct! #{player1.lives}/3 lives left."
    else
      player1.lose_life
      puts "Wrong, the answer is #{current_question.answer}! #{player1.lives}/3 lives left."
    end
    puts "----- NEW TURN -----"
  end
  round += 1
end