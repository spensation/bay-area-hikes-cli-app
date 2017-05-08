class BayAreaHikes::CLI

  def call
    puts 'Great hikes in the Bay.'
    list_hikes
    menu
  end

  def list_hikes
    puts <<-DOC
      1. Mt. Tam
      2. Briones
      3. Skyline
      DOC
  end

  def menu
    puts 'Please enter the number of the hike you would like to know more about or exit to exit:'
  end


  end
end
