class Plant < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'
	belongs_to :garden
	mount_uploader :plant_image, PlantImageUploader
end
