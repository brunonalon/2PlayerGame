require_relative 'player'
def generate_question(player_name)
    number1 = Random.rand(20)
    number2 = Random.rand(20)
    puts "#{player_name} what's is the result of #{number1} + #{number2}?"
    result = number1 + number2
end

def show_score(player)
  "#{player.name}: #{player.score}"
end

def creat_player
  puts "What your name?"
  name = gets.chomp.to_s
  Player.new(name)
end


 def game
  puts "2 Player games started, please chose your names."
  player1 = creat_player
  player2 = creat_player

  game_on = true

  while game_on
    result = generate_question(player1.name)
    player_result = gets.chomp

    if player_result.to_i != result
      player1.lose_life
      puts "Wrong!!!!!!"
    else
      player1.gain_point
      puts "Yep!!!!! "
    end

    result = generate_question(player2.name)
    player_result = gets.chomp
    if player_result.to_i != result
      player2.lose_life
      puts "Wrong!!!!!!"
    else
      player2.gain_point
      puts "Yep!!!!! "
    end

    puts "SCORE"
    puts show_score(player1)
    puts show_score(player2)


    if (player1.life == 0) || (player2.life == 0)
      if player1.score == player2.score
        puts "No winners!!!"
      elsif player1.score > player2.score
        puts "Player #{player1.name} wins !!!!!"
      else
        puts "Player #{player2.name} wins !!!!"
      end
          
      game_on = false
    end

  end
end

game



