# This is our CLI Controller

class UpcomingConcerts::CLI

  def call
    show_concerts
    menu
  end

  def show_concerts
    puts "Here are the next five concerts in the Phoenix Area:"
   
    Concerts.all.each_with_index do |num, x|
      x = 1
      puts "#{x}. " + Concerts.concert_1[:artist]
      puts "#{x + 1}. " + Concerts.concert_2[:artist]
      puts "#{x + 2}. " + Concerts.concert_3[:artist]
      puts "#{x + 3}. " + Concerts.concert_4[:artist]
      puts "#{x + 4}. " + Concerts.concert_5[:artist]
    end
end

  def menu  ##### This will redirect the user to the concert they are interested in ######
    input = nil
    while input != "exit"
      puts "Which concert would you like to know more about? Type 1 - 5, list, or type exit."
      input = gets.strip.downcase

      if input == "1" 
        loop do
            puts "What would you like to know? Please Type: Date, Venue, City, Time, Day, All, or exit"
            one = gets.strip.downcase
          if one == "exit"          
            break
          elsif one == "date"
            puts "Concert Date: " + Concerts.concert_1[:date]
          elsif one == "venue"
            puts "Venue Location: " + Concerts.concert_1[:venue_name]
          elsif one == "city"
            puts "City: " + Concerts.concert_1[:city]
          elsif one == "time"
            puts "Concert Time: " + Concerts.concert_1[:time]
          elsif one == "day"
            puts "Concert Day: " + Concerts.concert_1[:day]
          elsif one == "all"
            puts Concerts.call_1
            break
          end
        end
      elsif input == "2"
        loop do
            puts "What would you like to know? Please Type: Date, Venue, City, Time, Day, All, or exit"
            one = gets.strip.downcase
          if one == "exit"
            break
          elsif one == "date"
            puts "Concert Date: " + Concerts.concert_2[:date]
          elsif one == "venue"
            puts "Venue Location: " + Concerts.concert_2[:venue_name]
          elsif one == "city"
            puts "City: " + Concerts.concert_2[:city]
          elsif one == "time"
            puts "Concert Time: " + Concerts.concert_2[:time]
          elsif one == "day"
            puts "Concert Day: " + Concerts.concert_2[:day]
          elsif one == "all"
            puts Concerts.call_2
            break
          end
        end
      elsif input == "3"
        loop do
            puts "What would you like to know? Please Type: Date, Venue, City, Time, Day, All, or exit"
            one = gets.strip.downcase
          if one == "exit"
            break
          elsif one == "date"
            puts "Concert Date: " + Concerts.concert_3[:date]
          elsif one == "venue"
            puts "Venue Location: " + Concerts.concert_3[:venue_name]
          elsif one == "city"
            puts "City: " + Concerts.concert_3[:city]
          elsif one == "time"
            puts "Concert Time: " + Concerts.concert_3[:time]
          elsif one == "day"
            puts "Concert Day: " + Concerts.concert_3[:day]
          elsif one == "all"
            puts Concerts.call_3
            break
          end
        end
      elsif input == "4"
        loop do
            puts "What would you like to know? Please Type: Date, Venue, City, Time, Day, All, or exit"
            one = gets.strip.downcase
          if one == "exit"
            break
          elsif one == "date"
            puts "Concert Date: " + Concerts.concert_4[:date]
          elsif one == "venue"
            puts "Venue Location: " + Concerts.concert_4[:venue_name]
          elsif one == "city"
            puts "City: " + Concerts.concert_4[:city]
          elsif one == "time"
            puts "Concert Time: " + Concerts.concert_4[:time]
          elsif one == "day"
            puts "Concert Day: " + Concerts.concert_4[:day]
          elsif one == "all"
            puts Concerts.call_4
            break
          end
        end
      elsif input == "5"
        loop do
            puts "What would you like to know? Please Type: Date, Venue, City, Time, Day, All, or exit"
            one = gets.strip.downcase
          if one == "exit"
            break
          elsif one == "date"
            puts "Concert Date: " + Concerts.concert_5[:date]
          elsif one == "venue"
            puts "Venue Location: " + Concerts.concert_5[:venue_name]
          elsif one == "city"
            puts "City: " + Concerts.concert_5[:city]
          elsif one == "time"
            puts "Concert Time: " + Concerts.concert_5[:time]
          elsif one == "day"
            puts "Concert Day: " + Concerts.concert_5[:day]
          elsif one == "all"
            puts Concerts.call_5
            break
          end
        end
      elsif input == "list"
        show_concerts
      elsif input == "exit"
        goodbye
      end
    end
  end


  def goodbye
    puts "Come back to see the upcoming concerts in Phoenix!"
  end
end