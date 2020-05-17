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
  
      rows = doc.css("tr") 
      
      cols = ["Jersey Number", "Name", "Position", "Age", "Height", "Weight", "College/Country"]
      rows.each do |row|
        if row.css(".column-2").text == player.name 
          row.css("td").each_with_index do |data, i|
            puts "#{cols[i]}: #{data.text}"
          end
        end
      end
    end
  end
  
    

  
  
