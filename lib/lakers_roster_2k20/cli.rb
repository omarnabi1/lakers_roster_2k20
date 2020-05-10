class LakersRoster2k20::CLI 
   def call 
    puts "\nWelcome! Meet your 2020 Los Angeles Lakers!\n"
    get_roster
    show_roster
    get_user_picked_player
  end
  
  def get_roster
    @players = LakersRoster2k20::Player.all 
  end

  def show_roster
    puts "\nChoose a Laker to learn more about them!.\n"
    @players.each.with_index do  |player, index|
      puts "#{index + 1}.#{player.name}"
    end
  end
  
  def get_user_picked_player
    chosen_player = gets.strip.to_i
    show_bio_for(chosen_player) if valid_input(chosen_player.to_i, @players)
  end

  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end
  
  def show_bio_for(chosen_player)
    player = @players[chosen_player - 1]
    bio = player.bio 
    puts "Here is more about your favorite Laker, #{player.name}!"
  end
end

