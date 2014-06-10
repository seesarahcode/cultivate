class Garden < ActiveRecord::Base
	has_many :plants, -> { order("plant_date DESC, family ASC") }, 
					 :dependent => :nullify
end
