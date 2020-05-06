class LakersRoster2k20::CLI 
  
   def call 
    puts 'Welcome! Pick a number to get to know your Lakers Players!'
    get_list_of_players
    get_user_picked_player
    #get_attributes_of_picked_player
    #list_attributes_of_picked_player
  end
  
  def get_list_of_players
    @players = ['Kostas Antetokounmpo', 'Avery Bradley', 'Devontae Cacok', 'Kentavious Caldwell-Pope', 'Alex Caruso', 'Quinn Cook', 'Anthony Davis', 'Jared Dudley', 'Danny Green', 'Talen Horton-Tucker', 'Dwight Howard', 'LeBron James', 'Kyle Kuzma', 'Javale McGee', 'Markieff Morris', 'Rajon Rondo', 'Dion Waiters']
  end
  
  def get_user_picked_player
    @players.each.with_index do  |player, index|
      puts "#{index + 1}.#{player}"
    end
  end
  
end