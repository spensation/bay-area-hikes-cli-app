class BayAreaHikes::Hike

attr_accessor :name, :county, :duration, :difficulty_level
  def self.ideas
    puts <<-DOC
      1 Mt. Tam
      2 Briones
      3 Skyline
      DOC

      hike_1 = self.new
      hike_1.name = 'Mt. Tam'
      hike_1.county = 'Marin'
      hike_1.duration = '2.5 hrs'
      hike_1.difficulty_level = 'moderate'

      hike_2 = self.new
      hike_2.name = 'Briones'
      hike_2.county = 'Contra Costa'
      hike_2.duration = '2 hrs'
      hike_2.difficulty_level = 'moderate'

      hike_3 = self.new
      hike_3.name = 'Skyline'
      hike_3.county = 'San Mateo'
      hike_3.duration = '1.5 hrs'
      hike_3.difficulty_level = 'hard'

      [hike_1, hike_2, hike_3]
    end
end
