class DropPlantDate < ActiveRecord::Migration
  change_table :plants do |p|
  	p.remove :plant_date
  end
end
