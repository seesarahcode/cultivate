class AddPlantImageToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :plant_image, :string
  end
end
