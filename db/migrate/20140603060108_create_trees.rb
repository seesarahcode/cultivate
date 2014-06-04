class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :type
      t.string :variety
      t.string :tree_source
      t.date :plant_date
      t.integer :plant_quantity
      t.text :notes

      t.timestamps
    end
  end
end
