class DropPlantColumns < ActiveRecord::Migration
  change_table :plants do |p|
  	p.remove :sun_preference, :plant_type
  	p.remove :soil_type, :breed
  end
end
