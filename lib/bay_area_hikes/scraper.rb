require 'pry'
class BayAreaHikes::Scraper

  def scrape_hikes
    @doc = Nokogiri::HTML(open('http://gurmeet.net/hiking/ocean_view_hikes.html'))
    @doc.search("#main").each do |hike_div|
      hike = BayAreaHikes::Hike.new
      binding.pry

      hike.area = hike_div.search('.section_div div').first.children.text
      # name = hike_div.search("")
      hike.length = hike_div.search('.hike_stats_mini_box').first.children.text.gsub("\n", " ").strip
      # description = hike_div.search("")
      # url = hike_div.search("")

      hike.save

    end
  end

#   def scrape_bayarea
#     doc = Nokogiri::HTML(open('https://www.bayarea.com/play/the-best-bay-area-wildflower-hikes/'))
# #binding.pry
#     hike = self.new
#     hike.name = doc.search('.entry-content h3').children[0].text.strip
#     hike.city = doc.search('.entry-content h3').first.children.text[16..-1]
#     #hike.description = doc.search('.entry-content p span').children[3].text[0..359]
#     hike
#
#   end
#
#   def scrape_bayarea_2
#     doc = Nokogiri::HTML(open('https://www.bayarea.com/play/the-best-bay-area-wildflower-hikes/'))
# #binding.pry
#     hike = self.new
#     hike.name = doc.search('.entry-content h3').children[2].text.strip
#     hike.city = doc.search('.entry-content h3').children[3].text[3..-1]
#     #hike.description = doc.search('.entry-content p span').children[7..10].text.strip
#     hike
#   end
#
#   def self.details
#     self.scrape_details
#   end
#
#   def self.scrape_details
#     details = []
#     details << self.scrape_bayarea_detail
#     details << self.scrape_bayarea_detail_2
#     details
#   end
#
#   def self.scrape_bayarea_detail
#     doc = Nokogiri::HTML(open('https://www.bayarea.com/play/the-best-bay-area-wildflower-hikes/'))
#     detail = self.new
#     detail.description = doc.search('.entry-content p span').children[3].text[0..359]
#     detail
#   end
#
#   def self.scrape_bayarea_detail_2
#     doc = Nokogiri::HTML(open('https://www.bayarea.com/play/the-best-bay-area-wildflower-hikes/'))
#     detail = self.new
#     detail.description = doc.search('.entry-content p span').children[7..10].text.strip
#     detail
#   end

end
