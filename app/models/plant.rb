class Plant < ActiveRecord::Base
	belongs_to :garden, :foreign_key => 'garden_id'

	validates :plant_type, :breed,  :presence => true
end
