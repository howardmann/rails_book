json.planet @planet, :id, :name, :description

json.monsters @planet.monsters, :id, :name, :age, :description, :planet_id
