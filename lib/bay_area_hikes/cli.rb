class BayAreaHikes::CLI

  def call
    puts "Welcome to Bay Area Hikes"
    BayAreaHikes::Scraper.new.scrape_hikes
    list_hikes
    menu
    goodbye
  end

  def list_hikes
    BayAreaHikes::Hike.all.each.with_index(1) do |hike, i|
      puts "#{i}. #{hike.area} - #{hike.name}"
    end
  end

  def menu
    puts 'Please enter the number of the hike you would like to know more about or exit to exit:'
    input = nil
    while input != 'exit'
      input = gets.strip.downcase

      if input.to_i > 0
        puts "more info"
        call
      elsif input == 'list'
        list_hikes
      elsif input == 'exit'
        exit
      else
        puts 'Not sure what you want.  Please enter a valid number or type list to see entire list.'
      end
    end
  end

  def goodbye
    puts 'Thanks for visiting.  Have a great day out there!'
  end

end
