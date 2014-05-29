class AddGardenIdToPlants < ActiveRecord::Migration
  def up
  	add_column :plants, :garden_id, :integer
  end
  def down
  	remove_column :plants, :garden_id
  end
end
