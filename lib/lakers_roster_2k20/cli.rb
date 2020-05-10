class LakersRoster2k20::CLI 
   def call 
    puts "\nWelcome! Pick a number to get to know your Lakers Players!\n"
    get_roster
    show_roster
    get_user_picked_player
  end
  
  def get_roster
    @players = LakersRoster2k20::Player.all 
  end

  def show_roster
    puts "\nChoose a number to learn more about player.\n"
    @players.each.with_index do  |player, index|
      puts "#{index + 1}.#{player.name}"
    end
  end
  
  def get_user_picked_player
    chosen_player = gets.strip.to_i
    show_attributes_for(chosen_player) if valid_input(chosen_player.to_i, @players)
  end

  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end
  
  def show_attributes_for(chosen_player)
    player = @players[chosen_player - 1]
    puts "Here is more about your favorite Laker, #{player.name}"
  end
end

#['Kostas Antetokounmpo', 'Avery Bradley', 'Devontae Cacok', 'Kentavious Caldwell-Pope', 'Alex Caruso', 'Quinn Cook', 'Anthony Davis', 'Jared Dudley', 'Danny Green', 'Talen Horton-Tucker', 'Dwight Howard', 'LeBron James', 'Kyle Kuzma', 'Javale McGee', 'Markieff Morris', 'Rajon Rondo', 'Dion Waiters']