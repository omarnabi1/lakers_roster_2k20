class LakersRoster2k20::Scraper
  
  def initialize(url)
  end
  
  def self.scrape_players
    doc = Nokogiri::HTML(open("https://www.nba.com/lakers/roster?ls=nav_team"))
  end
  
 #player = {}
 #
 #player[:height] = doc.search("span.PlayerCard").text
 #player[:position] = 
 #player[:date_of_birth] = 
 #player[:years_pro] = 
 #player[:weight] = 
 #player[:from] = 
  
  
  
  
end
