class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :age
      t.integer :planet_id

      t.timestamps null: false
    end
  end
end
