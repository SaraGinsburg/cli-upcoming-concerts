# This is our CLI Controller
require 'pry'

class UpcomingConcerts::CLI

  def call
    menu
  end

  def list
    puts ""
    puts "********** Upcoming Concerts in Phoenix, AZ ************"
    puts ""
    Concert.all.each_with_index do |concert, i| 
      puts Concert.artist
    end
    puts ""
  end

  def print_concert(concert)
    puts ""
    puts Concert.artist

    puts ""
    puts Concert.venue_name

    puts ""
    puts Concert.day

    puts ""
    puts Concert.date

    puts ""
    puts Concert.city

    puts ""
    puts Concert.time
  end

  def menu
      list
      input = nil
      while input != exit
        puts ""
        puts "Which concert would you like to know more information about?"
        puts ""
        puts "Type list to see the list of concerts again."
        puts "Type exit to end the program"
        puts ""
        input = gets.strip
        if input == "list"
          list
        elsif input.to_i == 0
          if concert = Concert.find_by_name(input)
            print_concert(concert)
          end
        elsif input.to_i > 0
          if concert = Concert.find(input.to_i)
            print_concert(concert)
          end
        end
      end
      puts "Come back to see the upcoming concerts in Phoenix!"
  end

end ## class end


      

     


  