class LakersRoster2k20::Info
attr_accessor :jersey_number, :position, :age, :height, :weight, :college_country, :player, :url 
@@all = []

  def initialize(name, player) 
    @url = url
    @player = player
    @jersey_number = []
    @position = []
    @age = []
    @height = []
    @weight = []
    @college_country = []
    #notify player about the bio 
    add_to_player
    save
  end
  
  def self.all 
    @@all 
  end
  
  def add_to_player
    @player.info << self unless @player.info.include?(self)
  end
  
  def get_info_details
  #scraping website for jersey_number, position, age, height, weight, college_country
   LakersRoster2k20::Scraper.scrape_info(self) if jersey_number.empty?
 end
  
  def save
    @@all << self
  end
end