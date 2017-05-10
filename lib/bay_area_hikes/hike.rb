class BayAreaHikes::Hike

attr_accessor :name, :city, :description

  def self.ideas
    self.scrape_hikes
  end

  def self.scrape_hikes
    hikes = []
    hikes << self.scrape_bayarea
    hikes << self.scrape_bayarea_2
    hikes
  end

  def self.scrape_bayarea
    doc = Nokogiri::HTML(open('https://www.bayarea.com/play/the-best-bay-area-wildflower-hikes/'))
#binding.pry
    hike = self.new
    hike.name = doc.search('.entry-content h3').children[0].text.strip
    hike.city = doc.search('.entry-content h3').first.children.text[16..-1]
    hike.description = doc.search('.entry-content p span').children[3].text[0..359]
    hike

  end

  def self.scrape_bayarea_2
    doc = Nokogiri::HTML(open('https://www.bayarea.com/play/the-best-bay-area-wildflower-hikes/'))
#binding.pry
    hike = self.new
    hike.name = doc.search('.entry-content h3').children[2].text.strip
    hike.city = doc.search('.entry-content h3').children[3].text[3..-1]
    hike.description = doc.search('.entry-content p span').children[7..10].text.strip
    hike
  end
end
