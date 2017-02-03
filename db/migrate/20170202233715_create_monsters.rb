class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.text :description
      t.integer :age
      t.integer :planet_id

      t.timestamps null: false
    end
  end
end
