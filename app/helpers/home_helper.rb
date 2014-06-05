module HomeHelper

# Example helper from Week 2 homework--commenting out for final version

	# def greenify
	# 	if params[:go_green].to_i == 1
	# 		"class=greenify"
	# 	else
	# 		"class=default"
	# 	end
	# end


	def random_background
		backgrounds = ["/assets/bgVegetables.jpg", "/assets/bgTrees.jpg", "/assets/bgGarden.jpg" ]
		backgrounds.sample
	end


end
