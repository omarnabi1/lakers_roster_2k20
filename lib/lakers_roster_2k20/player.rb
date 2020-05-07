class LakersRoster2k20::Player
@@all = []

attr_accessor :name 

  def initialize 
    @name = name 
    save
  end
  
  def self.all 
  LakersRoster2k20::Scraper.scrape_players if @@all.empty?
  @@all 
  end
  
  def save
    @@all << self
  end





end