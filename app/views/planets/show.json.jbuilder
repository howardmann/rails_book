json.planet do
  json.(@planet, :id, :name, :description)
  json.monsters (@planet.monsters.pluck('id'))
end


json.monsters @planet.monsters, :id, :name, :age, :description, :planet_id
