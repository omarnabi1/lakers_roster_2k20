class LakersRoster2k20::CLI 
   
  def call 
    puts "\nWelcome! Meet your 2020 Los Angeles Lakers!\n"
    @input = ""
    until @input == "exit"
      get_roster
      show_roster
      get_user_picked_player
      what_next
    end
    goodbye
  end
  
  def get_roster
    @players = LakersRoster2k20::Player.all 
  end

  def show_roster
    puts "\nPick a Laker to see their...\n"
    puts "\n - Jersey Number\n"
    puts " - Position"
    puts " - Age"
    puts " - Height"
    puts " - Weight"
    puts " - College/Country"
    puts " "
    @players.each.with_index(1) do  |player, index|
      puts "#{index}.#{player.name}" unless index == @players.length - 1 
    end
  end
  
  def get_user_picked_player
    chosen_player = gets.strip.to_i
    show_info_for(chosen_player) if valid_input(chosen_player.to_i, @players)
  end

  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end
  
  def show_info_for(chosen_player)
    player = @players[chosen_player - 1]
    puts "\nHere is more about your favorite Laker, #{player.name}!\n"
    player.get_info.each.with_index(1) 
  end
  
  
  def what_next
    puts "Done? Type 'exit' to exit or hit any key to pick another player."
    @input = gets.strip
  end
  
  def goodbye
    puts "See you again! Go Lakers!"
  end
end

