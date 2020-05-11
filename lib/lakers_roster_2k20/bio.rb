class LakersRoster2k20::Bio
attr_accessor :name, :player, :number, :position, :height, :weight, :college
@@all = []

  def initialize(name, player) 
    @name = name 
    @player = player
    #notify player about the bio 
    add_to_player
    save
  end
  
  def self.all 
    @@all 
  end
  
  def add_to_player
    @player.bio << self unless @player.get_bio.include?(self)
  end
  
  def save
    @@all << self
  end
end