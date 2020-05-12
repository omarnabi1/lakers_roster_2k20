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
  
      info = doc.css("tr.row-1")
      
      info.each do |i|
        info_title = i.text
        LakersRoster2k20::Info.new(info_title, player, url)
      end
    end
    
  def self.scrap_info_details
    doc = Nokogiri::HTML(open("https://lakersnation.com/los-angeles-lakers-roster/"))
  
      info = doc.css("tr td") 
      info.each do |i|
        info_title = i.text
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
  
  
  
  
