class AddTimestampsToGarden < ActiveRecord::Migration
  def change_table
  	add_column(:gardens, :created_at, :datetime)
  	add_column(:gardens, :created_at, :datetime)
  end
end
