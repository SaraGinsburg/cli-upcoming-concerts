require 'pry'
class Concert


  attr_accessor :artist, :venue_name, :day, :date, :time, :city, :url

  def initialize(artist = nil)
    @artist = artist 
  end

  def self.all 
    @@all ||= scrape_all
  end

  def self.find(id)
    self.all[id-1]
  end

  def self.find_by_name(artist)
    self.all.detect do |art|
      art.artist.downcase.strip == artist.downcase.strip ||
      art.artist.split("(").first.strip.downcase == artist.downcase.strip
    end
  end

  def self.artist 
    @artist ||= artist = scrape_all.search(".tn_results_event_text span[itemprop = 'name']").text
  end

  def self.venue_name 
    @venue_name ||= venue_name = scrape_all.search(".tn_results_venue_text span[itemprop='name']").text
  end

  def self.city 
    @city ||= city = scrape_all.search(".tn_results_location_text").text
  end

  def self.day
    @day ||= day = scrape_all.search(".tn_results_day_text").text
  end

  def self.date 
    @date ||= date = scrape_all.search(".tn_results_date_text").text
  end

  def self.time
   @time ||= time = scrape_all.search(".tn_results_time_text").text
  end

  private

  def self.scrape_all 
    doc = Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))
  end

end ## class end


#   def get_page 
#     @doc ||= Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))
#     @doc.css(".tn_results").each do |concert|
        
#           concert.artist = concert.css(".tn_results_event_text span").text
#           concerts << concert.css(".tn_results_venue_text [itemprop = 'name']").text
#           concerts << concert.css(".tn_results_location_text").text
#           concerts << concert.css(".tn_results_day_text").text
#           concerts << concert.css(".tn_results_date_text").text
#           concerts << concert.css(".tn_results_time_text").text
#   end 

# def self.concert_all
#     concerts = []
#       get_page.css(".tn_results").each do |concert|
        
#           concerts << concert.css(".tn_results_event_text span")[0].text
#           concerts << concert.css(".tn_results_venue_text [itemprop = 'name']").text
#           concerts << concert.css(".tn_results_location_text").text
#           concerts << concert.css(".tn_results_day_text").text
#           concerts << concert.css(".tn_results_date_text").text
#           concerts << concert.css(".tn_results_time_text").text
        
#       end
#       # puts concerts[0]
#      # input = gets.chomp
#      # if input == "Artist"
#      #    puts concerts[0]
#      #  end

#       # puts ""
#       # puts "Information for " + self.artist + " concert:"
#       # puts "--------------------------------------------"
#       # puts "Artist: " + self.artist
#       # puts "Venue: " + self.venue_name
#       # puts "City: " + self.city
#       # puts "Day: " + self.day
#       # puts "Date: " + self.date
#       # puts "Time: " + self.time
#       # puts "--------------------------------------------"
# end ## method end

# end ## class end


 # def self.scrape_all
  #   doc = Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))

  #   data = doc.search("tr").collect do |tr|
  #     concert = {}
  #     concert[:artist] = tr.search("td:first").text
  #     concert[:venue_name] = tr.search("td:first").text
  #     concert[:day] = tr.search("td:first").text
  #     concert[:date] = tr.search("td:first").text
  #     concert[:time] = tr.search("td:first").text
  #     concert[:city] = tr.search("td:first").text

  #     concert
  #   end
    

  #   data = (0..4).to_a.collect do |i|
  #       doc.css(".tn_results_event_text span")[i].text
  #       doc.css(".tn_results_venue_text [itemprop = 'name']")[i].text
  #       doc.css(".tn_results_location_text")[i].text
  #       doc.css(".tn_results_date_text")[i].text
  #       doc.css(".tn_results_time_text")[i].text
  #       doc.css(".tn_results_day_text")[i].text      
  #   end
    
     
  # end ## scrape_all end













