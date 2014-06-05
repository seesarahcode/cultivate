class AddOrchardIdToTrees < ActiveRecord::Migration
  def up
  	add_column :trees, :orchard_id, :integer
  end
  def down
  	remove_column :trees, :orchard_id
  end
end
