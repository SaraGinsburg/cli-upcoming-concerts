# This is our CLI Controller
require 'pry'

class UpcomingConcerts::CLI

  def call
    # Concert.all #=> 0 
    Concert.scrape_all #=> Prime the concert class to have all the instances of Concert in @@all.
    list
    menu
    # Concert.all #=> has concerts.
  end

  def list
    puts ""
    puts "********** Upcoming Concerts in Phoenix, AZ ************"
    puts ""
    Concert.all.each.with_index(1) do |concert, i|
      puts "#{i}. #{concert.artist}"
    end
  end

  def menu
    input = nil
    while input != "exit"      
      puts ""
      puts "Which concert would you like to know more information about?"
      puts ""
      puts "Type list to see the list of concerts again."
      puts "Type exit to end the program"
      puts ""
      input = gets.strip
      if input == "list"
        list
      elsif input.to_i.between?(1, Concert.all.size) ## need to check if number exists with a concert
        # concert = Concert.all.collect do |concert|
          #### what goes here?
          concert = Concert.find(input)
          puts "   #{concert.venue_name}"
          puts "   #{concert.day}"
          puts "   #{concert.city}"
          puts "   #{concert.date}"
          puts "   #{concert.day}"
          puts "   #{concert.time}"
      
      else
        "goodbye"
      end
    end    
    puts "Come back to see the upcoming concerts in Phoenix!"
  end

end ## class end


      

     


  