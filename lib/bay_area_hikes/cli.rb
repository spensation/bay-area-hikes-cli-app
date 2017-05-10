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
    details = BayAreaHikes::Details.details
    while input != 'exit'
      puts 'Please enter the number of the hike you would like to know more about or exit to exit:'
      input = gets.strip.downcase
      detail = details[input.to_i - 1]

      if input.to_i > 0
        puts "#{detail.description}"
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
