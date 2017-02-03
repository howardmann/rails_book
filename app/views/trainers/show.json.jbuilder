json.trainer do
  json.(@trainer, :id, :name, :age, :planet_id)
  if @trainer.planet
    json.planet (@trainer.planet.id)
  end
end

if @trainer.planet
  json.planet @trainer.planet, :id, :name, :description
end
