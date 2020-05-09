class LakersRoster2k20::Scraper
  
  def self.scrape_players
    roster = Nokogiri::HTML(open("https://www.nba.com/lakers/roster?ls=nav_team"))
  
  players = roster.css("tr.Table__TR.Table__TR--lg.Table__even")

    players.each do |p|
      puts p.css('a.AnchorLink').text
      players.each do |p|
        name = p.text 
        LakersRoster2k20::Player.new(name)
      end
    end
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
