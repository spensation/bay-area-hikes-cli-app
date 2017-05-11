class BayAreaHikes::Hike

attr_accessor :name, :length, :description, :url

@@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end


end
