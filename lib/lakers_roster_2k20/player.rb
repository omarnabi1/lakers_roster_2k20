class LakersRoster2k20::Player
@@all = []

attr_accessor :name 

  def initialize 
    @name = name 
    save
  end
  
  def self.all 
  @@all 
  end
  
  def save
    @@all << self
  end





end