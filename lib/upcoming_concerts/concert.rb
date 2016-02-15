# Object
#   Class
#     Concert
#       - @@all - all objects in this class
#       - @@doc  - all the data needed to create object in this class.
#       concert_1 = Concert.new
#         - @artist = "Kanye"
#         - @venue = "MSG"
#       concert_2 = Concert.new
#       concert_3 = Concert.new
#         - @artist =
#     Vrtist
#     Venue


require 'pry'
class Concert
  attr_accessor :artist, :venue_name, :day, :date, :time, :city, :url

  # def initialize(artist = nil)
  #   @artist = artist 
  # end

  @@all = []

  def self.all 
    @@all 
  end

  def save
    @@all << self
  end

  def self.find(id)
    # /Users/BrigansMac/upcoming_concerts/lib/upcoming_concerts/concert.rb:35:in `find': 
    # undefined method `-' for "111":String (NoMethodError)

    self.all[id.to_i - 1]
  end

  def self.find_by_name(artist)
    self.all.detect do |art|
      art.artist.downcase.strip == artist.downcase.strip ||
      art.artist.split("").first.strip.downcase == artist.downcase.strip
    end
  end

  def self.artists_data
    @@artists_data ||= doc.search(".tn_results_event_text span[itemprop = 'name']").collect{|e| e.text}
  end

  def self.venue_names
     @@venue_names ||= doc.search(".tn_results_venue_text span[itemprop='name']").collect{|e| e.text}
  end

  def self.cities
    @@cities ||= doc.search(".tn_results_location_text").collect{|e| e.text}
  end

  def self.days
    @@days ||= doc.search(".tn_results_day_text").collect{|e| e.text}
  end

  def self.dates
    @@dates ||= doc.search(".tn_results_date_text").collect{|e| e.text}
  end

  def self.times
    @@times ||= doc.search(".tn_results_time_text").collect{|e| e.text}
  end

  def self.doc
    @@doc ||= Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))
  end

  def self.scrape_all
    (0..artists_data.size).to_a.each do |i|
      artist_name = artists_data[i]
      venue_name = venue_names[i]
      city = cities[i]
      day = days[i]
      time = times[i]

      concert = Concert.new
      concert.artist =  artist_name     
      concert.venue_name =  venue_name     
      concert.city =  city     
      concert.day = day
      concert.time = time   
      concert.save  
    end
  end

end ## class end





# Concert.all #=. [#<Concert>, #<Concert>]

## set variable 


#artist_names #=> ["Robert Delong", "Emily Wells", "Meat Wave", etc]


