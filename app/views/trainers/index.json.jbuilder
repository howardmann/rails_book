json.trainers @trainers do |trainer|
  json.(trainer, :id, :name, :age, :planet_id)

  if trainer.planet
    json.planet trainer.planet.id
  end
end

json.planets @planets, :id, :name, :description
