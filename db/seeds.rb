# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ====== MONSTER
Monster.destroy_all
pikachu = Monster.create :name => 'pikachu', :age => 18, :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam, voluptas.'
charmander = Monster.create :name => 'charmander', :age => 28, :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam, voluptas.'
squirtle = Monster.create :name => 'squirtle', :age => 3, :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam, voluptas.'
bulbasaur = Monster.create :name => 'bulbasaur', :age => 42, :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam, voluptas.'
mew = Monster.create :name => 'mew', :age => 12, :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam, voluptas.'

puts "==MONSTER=="
puts "Monster count expect 5: #{Monster.count}"
puts "Monster names: #{Monster.all.pluck('name')}"

# ====== PLANET
Planet.destroy_all
earth = Planet.create :name => 'earth', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum, quas!'
mars = Planet.create :name => 'mars', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum, quas!'
pluto = Planet.create :name => 'pluto', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum, quas!'
atlantis = Planet.create :name => 'atlantis', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum, quas!'

puts "\n==PLANET=="
puts "Planet count expect 4: #{Planet.count}"
puts "Planet names: #{Planet.all.pluck('name')}"

# ====== ASSOCIATIONS
earth.monsters << pikachu << bulbasaur
mars.monsters << charmander
pluto.monsters << squirtle
atlantis.monsters << mew

puts "\n==ASSOCIATIONS=="
puts "Earth monsters count expect 2: #{earth.monsters.all.pluck('name')}"
puts "Mars monsters count expect 1: #{mars.monsters.all.pluck('name')}"
puts "Pluto monsters count expect 1: #{pluto.monsters.all.pluck('name')}"
puts "Atlantis monsters count expect 1: #{atlantis.monsters.all.pluck('name')}"
