class LakersRoster2k20::Scraper
  def self.scrape_players
    roster = Nokogiri::HTML(open("https://lakersnation.com/los-angeles-lakers-roster/"))

    players = roster.css("td.column-2")
    
    players.each do |p|
      name = p.text
      LakersRoster2k20::Player.new(name)
    end
  end
  
    
  def self.scrape_info(player)
    doc = Nokogiri::HTML(open("https://lakersnation.com/los-angeles-lakers-roster/"))
  
      info = doc.css("tr td") 
      
      info.each do |i|
       puts i.text.strip
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
  
  
  
  
