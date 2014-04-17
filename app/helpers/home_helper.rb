module HomeHelper

	def greenify
		#@go_green = params[:read_true]
		if params[:go_green].to_i == 1
			"class=greenify"
		else
			"class=default"
		end
	end

end
