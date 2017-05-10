class BayAreaHikes::Details

  attr_accessor :description

  def self.details
    self.scrape_details
  end

  def self.scrape_details
    details = []
    details << self.scrape_bayarea_detail
    details << self.scrape_bayarea_detail_2
    details
  end

  def self.scrape_bayarea_detail
    doc = Nokogiri::HTML(open('https://www.bayarea.com/play/the-best-bay-area-wildflower-hikes/'))
    detail = self.new
    detail.description = doc.search('.entry-content p span').children[3].text[0..359]
    detail
  end

  def self.scrape_bayarea_detail_2
    doc = Nokogiri::HTML(open('https://www.bayarea.com/play/the-best-bay-area-wildflower-hikes/'))
    detail = self.new
    detail.description = doc.search('.entry-content p span').children[7..10].text.strip
    detail
  end

end
