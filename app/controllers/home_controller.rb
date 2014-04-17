class HomeController < ApplicationController
  def index
  	@go_green = params[:go_green]
  end

  def contact
  end
end
