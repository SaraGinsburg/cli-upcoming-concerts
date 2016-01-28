require 'pry'
class Concerts

  # attr_accessor :name, :date, :ticket, :url, :venue

  def self.all

    doc = Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))

      artist = {}

      doc.css(".tn_results").each do |concert|
        artist = {
          :artist => doc.css(".tn_results_event_text span")[0..4].text
        }
      end
      artist
  end

  def self.concert_1
    doc = Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))

      concerts = {}

      doc.css(".tn_results").each do |concert|
        concerts = {
          :artist => doc.css(".tn_results_event_text span")[0].text,
          :venue_name => doc.css(".tn_results_venue_text [itemprop = 'name']")[0].text,
          :city => doc.css(".tn_results_location_text")[0].text,
          :day => doc.css(".tn_results_day_text")[0].text,
          :date => doc.css(".tn_results_date_text")[0].text,
          :time => doc.css(".tn_results_time_text")[0].text
        }
      end
      concerts
  end

  def self.concert_2
    doc = Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))

      concerts = {}

      doc.css(".tn_results").each do |concert|
        concerts = {
          :artist => doc.css(".tn_results_event_text span")[1].text,
          :venue_name => doc.css(".tn_results_venue_text [itemprop = 'name']")[1].text,
          :city => doc.css(".tn_results_location_text")[1].text,
          :day => doc.css(".tn_results_day_text")[1].text,
          :date => doc.css(".tn_results_date_text")[1].text,
          :time => doc.css(".tn_results_time_text")[1].text
        }
      end
      concerts
  end

  def self.concert_3
    doc = Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))

      concerts = {}

      doc.css(".tn_results").each do |concert|
        concerts = {
          :artist => doc.css(".tn_results_event_text span")[2].text,
          :venue_name => doc.css(".tn_results_venue_text [itemprop = 'name']")[2].text,
          :city => doc.css(".tn_results_location_text")[2].text,
          :day => doc.css(".tn_results_day_text")[2].text,
          :date => doc.css(".tn_results_date_text")[2].text,
          :time => doc.css(".tn_results_time_text")[2].text
        }
      end
      concerts
  end

  def self.concert_4
    doc = Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))

      concerts = {}

      doc.css(".tn_results").each do |concert|
        concerts = {
          :artist => doc.css(".tn_results_event_text span")[3].text,
          :venue_name => doc.css(".tn_results_venue_text [itemprop = 'name']")[3].text,
          :city => doc.css(".tn_results_location_text")[3].text,
          :day => doc.css(".tn_results_day_text")[3].text,
          :date => doc.css(".tn_results_date_text")[3].text,
          :time => doc.css(".tn_results_time_text")[3].text
        }
      end
      concerts
  end

  def self.concert_5
    doc = Nokogiri::HTML(open("http://www.bigstub.com/phoenix-az-concerts.aspx"))

      concerts = {}

      doc.css(".tn_results").each do |concert|
        concerts = {
          :artist => doc.css(".tn_results_event_text span")[4].text,
          :venue_name => doc.css(".tn_results_venue_text [itemprop = 'name']")[4].text,
          :city => doc.css(".tn_results_location_text")[4].text,
          :day => doc.css(".tn_results_day_text")[4].text,
          :date => doc.css(".tn_results_date_text")[4].text,
          :time => doc.css(".tn_results_time_text")[4].text
        }
      end
      concerts
  end

  def self.call_1
      puts ""
      puts "Information for " + Concerts.concert_1[:artist] + " concert:"
      puts "--------------------------------------------"
      puts "Artist: " + Concerts.concert_1[:artist]
      puts "Venue: " + Concerts.concert_1[:venue_name]
      puts "City: " + Concerts.concert_1[:city]
      puts "Day: " + Concerts.concert_1[:day]
      puts "Date: " + Concerts.concert_1[:date]
      puts "Time: " + Concerts.concert_1[:time]
      puts "--------------------------------------------"
  end

  def self.call_2
    puts ""
    puts "Information for " + Concerts.concert_2[:artist] + " concert:"
    puts "--------------------------------------------"
    puts "Artist: " + Concerts.concert_2[:artist]
    puts "Venue: " + Concerts.concert_2[:venue_name]
    puts "City: " + Concerts.concert_2[:city]
    puts "Day: " + Concerts.concert_2[:day]
    puts "Date: " + Concerts.concert_2[:date]
    puts "Time: " + Concerts.concert_2[:time]
    puts "--------------------------------------------"
  end

  def self.call_3
    puts ""
    puts "Information for " + Concerts.concert_3[:artist] + " concert:"
    puts "--------------------------------------------"
    puts "Artist: " + Concerts.concert_3[:artist]
    puts "Venue: " + Concerts.concert_3[:venue_name]
    puts "City: " + Concerts.concert_3[:city]
    puts "Day: " + Concerts.concert_3[:day]
    puts "Date: " + Concerts.concert_3[:date]
    puts "Time: " + Concerts.concert_3[:time]
    puts "--------------------------------------------"
  end

  def self.call_4
    puts ""
    puts "Information for " + Concerts.concert_4[:artist] + " concert:"
    puts "--------------------------------------------"
    puts "Artist: " + Concerts.concert_4[:artist]
    puts "Venue: " + Concerts.concert_4[:venue_name]
    puts "City: " + Concerts.concert_4[:city]
    puts "Day: " + Concerts.concert_4[:day]
    puts "Date: " + Concerts.concert_4[:date]
    puts "Time: " + Concerts.concert_4[:time]
    puts "--------------------------------------------"
  end

  def self.call_5
    puts ""
    puts "Information for " + Concerts.concert_5[:artist] + " concert:"
    puts "--------------------------------------------"
    puts "Artist: " + Concerts.concert_5[:artist]
    puts "Venue: " + Concerts.concert_5[:venue_name]
    puts "City: " + Concerts.concert_5[:city]
    puts "Day: " + Concerts.concert_5[:day]
    puts "Date: " + Concerts.concert_5[:date]
    puts "Time: " + Concerts.concert_5[:time]
    puts "--------------------------------------------"
  end

end
