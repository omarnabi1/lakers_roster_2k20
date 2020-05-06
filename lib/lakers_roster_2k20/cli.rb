class LakersRoster2k20::CLI 
  
   def call 
    puts "\nWelcome! Pick a number to get to know your Lakers Players!\n"
    get_list_of_players
    show_list_of_players
    #get_user_picked_player
    #list_attributes_of_picked_player
  end
  
  def get_list_of_players
    @players = ['Kostas Antetokounmpo', 'Avery Bradley', 'Devontae Cacok', 'Kentavious Caldwell-Pope', 'Alex Caruso', 'Quinn Cook', 'Anthony Davis', 'Jared Dudley', 'Danny Green', 'Talen Horton-Tucker', 'Dwight Howard', 'LeBron James', 'Kyle Kuzma', 'Javale McGee', 'Markieff Morris', 'Rajon Rondo', 'Dion Waiters']
  end
  
  def show_list_of_players
    puts "\nChoose a number to lear more about player\n"
    @players.each.with_index do  |player, index|
      puts "#{index + 1}.#{player}"
    end
  end
  
  def get_user_picked_player
    chosen_player = gets.strip
    if valid_input(chosen_player.to_i, @players)
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.lenght && input < 0  
  
end