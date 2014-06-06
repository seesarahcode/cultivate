class AddPlantDateToPlants < ActiveRecord::Migration
  def up
  	add_column :plants, :plant_date, :date
  end
  def down
  	remove_column :plants, :plant_date
  end
end
