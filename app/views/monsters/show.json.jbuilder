json.monster do
  json.(@monster, :id, :name, :age, :description, :planet_id)
  json.planet (@monster.planet.id)
end

json.planet @monster.planet, :id, :name, :description
