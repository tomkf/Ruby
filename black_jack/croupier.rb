require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)

  return "Your score is #{player_score} bank is #{bank_score}"
end


 def end_game_message(player_score, bank_score)
 win = nil
   if player_score == bank_score
    return "Push"
    return player_score
  elsif player_score == 21
    win = true
    return "Black Jack"
   elsif player_score > 21
    win = false
    return "You lost the game"
   elsif player_score > bank_score
 win = true
 return "You won"
 return
 elsif player_score < bank_score
   win = false
   return "You lost"
   end
 end


 def play_game
   bank_value =  pick_bank_score()
  finish_condition = false
  player_score = 0
  until finish_condition do
  puts "Card? 'y' or 'yes' to get a new card"
 user_input = gets.chomp
 player_value = pick_player_card()
 player_score += player_value
  if user_input == "y" || user_input == "yes"
   puts state_of_the_game(bank_value, player_score)
 else
  finish_condition = true
  puts end_game_message(player_score, bank_value)
end

 end

 end




