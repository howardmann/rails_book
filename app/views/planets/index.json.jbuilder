json.planets @planets do |planet|
  json.(planet, :id, :name, :description)
  json.monsters(planet.monsters.all.pluck('id'))
end

json.monsters @monsters, :id, :name, :age, :description, :planet_id
