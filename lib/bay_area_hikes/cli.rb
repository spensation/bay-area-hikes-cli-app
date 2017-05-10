class BayAreaHikes::CLI

  def call
    list_hikes
    menu
    goodbye
  end

  def list_hikes
    @hikes = BayAreaHikes::Hike.ideas
    @hikes.each.with_index(1) do |hike, i|
      puts "#{i}. #{hike.name} - #{hike.city}"
    end
  end

  def menu
    input = nil
    while input != 'exit'
      puts 'Please enter the number of the hike you would like to know more about or exit to exit:'
      input = gets.strip.downcase

      if input.to_i > 0
        list_details
      elsif input == 'list'
        list_hikes
      elsif input == 'exit'
        exit
      else
        puts 'Not sure what you want.  Please enter a valid number or type list to see entire list.'
      end
    end
  end

  def list_details
    @details = BayAreaHikes::Details.details
    @details.each.with_index(1) do |detail, i|
      puts "#{detail.description}"
    end
  end

  def goodbye
    puts 'Thanks for visiting.  Have a great day out there!'
  end

end
