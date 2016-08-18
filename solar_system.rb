class SolarSystem
  attr_accessor :planets
  attr_reader :formation_year

  def initialize(list_of_planets)
    @planets = list_of_planets
    @formation_year = 2000
  end

  def add_planets(list_of_planets)
    @planets = @planets + list_of_planets
  end

  def print_planets
    @planets.each_with_index do |planet, i|
      print "#{ i + 1 }. #{ planet.name }   "
    end
    print "#{@planets.length + 1}. Exit"
    puts "\n"
  end
end
