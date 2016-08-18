class Planet
  attr_accessor :name, :color, :temp, :moons, :species, :rate, :distance_from_the_sun

  def initialize(name, color, temp, moons, species, rate, distance_from_the_sun)
    @name = name
    @color = color
    @temp = temp
    @moons = moons
    @species = species
    @rate = rate
    @distance_from_the_sun = distance_from_the_sun
  end

  def output_info(planets_array, world)
    world = world - 1
    puts "The planet #{planets_array[world].name} is the color #{planets_array[world].color}, averages #{planets_array[world].temp} degrees, has #{planets_array[world].moons} moons and the #{planets_array[world].species} species. The rate of solar rotation is once every #{planets_array[world].rate} days and it is #{planets_array[world].distance_from_the_sun} miles from the sun.\n\n"
  end
end
