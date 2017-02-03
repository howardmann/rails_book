json.monster do
  json.(@monster, :id, :name, :age, :description, :planet_id)
  if @monster.planet
    json.planet (@monster.planet.id)
  end
end

if @monster.planet
  json.planet @monster.planet, :id, :name, :description
end
