class BayAreaHikes::Hike

attr_accessor :name, :county, :duration, :difficulty_level

  def self.ideas
    self.scrape_hikes
  end

  def self.scrape_hikes
    hikes = []
    hikes << self.scrape_bayarea
    hikes
  end

  def self.scrape_bayarea
    doc = Nokogiri::HTML(open('https://www.bayarea.com/play/the-best-bay-area-wildflower-hikes/'))
    doc.css('.entry-content').each do |entry|
binding.pry
    end
  end
end
