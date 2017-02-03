json.monsters @monsters do |monster|
  json.(monster, :id, :name, :age, :description)

  if monster.planet
    json.planet monster.planet.id
  end
end

json.planets @planets, :id, :name, :description
