class LakersRoster2k20::Player
@@all = []
attr_accessor :name, :events

  def initialize(name) 
    @name = name 
    @bio = []
    save
  end
  
  def self.all 
    LakersRoster2k20::Scraper.scrape_players if @@all.empty?
   @@all 
  end
  
  def bio
    binding.pry
    LakersRoster2k20::Scraper.scrape_bio(self) if @@bio.empty?
    @bio 
  end
    
  
  def save
    @@all << self
  end
end