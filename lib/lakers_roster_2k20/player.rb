class LakersRoster2k20::Player
attr_accessor :name, :jersey_number, :position, :age, :height, :weight, :college_country
@@all = []


  def initialize(name) 
    @name = name 
    save
  end
  
  def self.all 
    LakersRoster2k20::Scraper.scrape_players if @@all.empty?
   @@all 
  end
  
  def get_info
    LakersRoster2k20::Scraper.scrape_info(self)
  end
  
  def save
    @@all << self
  end
end