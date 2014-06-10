class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.integer :garden_id
      t.string :family
      t.string :variety
      t.string :seed_source
      t.integer :quantity
      t.text :notes
      t.date :plant_date

      t.timestamps
    end
  end
end
