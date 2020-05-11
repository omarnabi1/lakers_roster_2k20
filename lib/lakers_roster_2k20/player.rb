class LakersRoster2k20::Player
attr_accessor :name, :events
@@all = []

  def initialize(name) 
    @name = name 
    @bio = [ ]
    save
  end
  
  def self.all 
    LakersRoster2k20::Scraper.scrape_players if @@all.empty?
   @@all 
  end
  
  def get_bio
    LakersRoster2k20::Scraper.scrape_bio(self) if @bio.empty?
  end
    
  def save
    @@all << self
  end
end