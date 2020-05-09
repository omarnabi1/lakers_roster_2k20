class LakersRoster2k20::Scraper
  def self.scrape_players
    roster = Nokogiri::HTML(open("https://www.espn.com/nba/team/roster/_/name/lal/los-angeles-lakers"))

    players = roster.css("tr.Table__TR.Table__TR--lg.Table__even a.AnchorLink")
    
    players.each do |p|
      puts p.text
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
  
  
  
  
