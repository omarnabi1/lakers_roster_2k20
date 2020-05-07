class LakersRoster2k20::Scraper
  
  def self.scrape_players
    doc = Nokogiri::HTML(open("https://www.nba.com/lakers/roster?ls=nav_team"))
    binding.pry 
  end
  
  
  
  
  
  
end
