class BayAreaHikes::Hike

attr_accessor :name, :city, :description

@@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end


end
