json.monsters @monsters do |monster|
  json.(monster, :id, :name, :age, :description)
  json.planet(monster.planet.id)
end

json.planets @planets, :id, :name, :description
