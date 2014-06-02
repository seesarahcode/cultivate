class RemoveLifecycleFromPlants < ActiveRecord::Migration
  def change
    remove_column :plants, :lifecycle, :string
  end
end
