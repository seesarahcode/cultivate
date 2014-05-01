class Garden < ActiveRecord::Base
	has_many :plants
	
	scope :small_garden, -> { where 'number_of_plants < 10' }
	scope :window_garden, -> { where('number_of_plants < 5') }

end
