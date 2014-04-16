class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :lifecycle
      t.string :plant_type
      t.string :breed
      t.string :sun_preference
      t.string :soil_type

      t.timestamps
    end
  end
end
