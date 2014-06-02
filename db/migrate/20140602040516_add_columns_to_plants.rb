class AddColumnsToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :type, :string
    add_column :plants, :variety, :string
    add_column :plants, :seed_source, :string
    add_column :plants, :plant_date, :string
    add_column :plants, :plant_quantity, :integer
    add_column :plants, :notes, :text
  end
end
