class LakersRoster2k20::Player
attr_accessor :name, :events
@@all = []

  def initialize(name) 
    @name = name 
    @info = [ ]
    save
  end
  
  def self.all 
    LakersRoster2k20::Scraper.scrape_players if @@all.empty?
   @@all 
  end
  
  def get_info
    LakersRoster2k20::Scraper.scrape_info(self) if @info.empty?
  end
  
  def save
    @@all << self
  end
end