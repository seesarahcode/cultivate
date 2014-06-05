module PlantsHelper


	def harvest_date
		date = @plant.plant_date 
		harvest_date = date + 16.weeks
		"Your plant will be ready to harvest on #{harvest_date}."
	end

end
