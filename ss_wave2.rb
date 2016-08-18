require_relative "planet"
require_relative "solar_system"

# testing data

dino_world = Planet.new("DinoWorld", "green", 100, 3, "dinosaurs", 250, 500)

mini_world = Planet.new("MiniWorld", "yellow", 88, 2, "minions", 400, 800)

otter_world = Planet.new("OtterWorld", "brown", 77, 5, "otters", 133, 400)

water_world = Planet.new("WaterWorld", "blue", 44, 9, "whales", 44, 3000)

planets = [dino_world, mini_world]
worlds = [otter_world, water_world]

# adds a list of planets to a new solar system
milky_way = SolarSystem.new(planets)
# adds another list of planets to the existing list of planets
milky_way.add_planets(worlds)

# ask user what planet they are interested in learning about
puts "What planet would you like to learn more about (enter the corresponding number)?\n\n"
puts milky_way.print_planets
selection = gets.chomp.to_i
until selection == milky_way.planets.length + 1
  puts milky_way.planets[selection - 1].output_info(milky_way.planets, selection)
  puts "Which planet would you like to learn about next?"
  puts milky_way.print_planets
  selection = gets.chomp.to_i
end

# create a method to calculate distance between planets
def distance_btw_planets(planet_one, planet_two)
  distance = planet_one.distance_from_the_sun - planet_two.distance_from_the_sun
  if distance < 0
    distance = -(distance)
  end
  return "Assuming the planets are in a straight line from the sun, the distance between #{planet_one.name} and #{planet_two.name} is #{distance} miles."
end

puts distance_btw_planets(otter_world, dino_world)

# create a method to calculate local age? Not sure if this is correct but trying to do this: solar system was formed in earth year 2000, a planet's solar rotation / orbit of once every 44 earth days would mean that the planet is 16 years * 365 earth days, which is 5840 earth days. Divide that by the rate of 44 earth days per rotation, and you have a planet with a local age of 132.72 years?

def local_age(planet, solar_system)
  current_year = Time.new.year
  earth_years = current_year - solar_system.formation_year
  earth_days = earth_years * 365
  planet_age = earth_days / planet.rate
  return "#{planet.name} is #{planet_age} years old, locally."
end

puts local_age(water_world, milky_way)
