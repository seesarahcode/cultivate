module HomeHelper

	def greenify
		if params[:go_green].to_i == 1
			"class=greenify"
		else
			"class=default"
		end
	end

end
