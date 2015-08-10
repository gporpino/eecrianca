class HomeController < ApplicationController
	before_action :authenticate_user!
	
	def index
    	authorize! :index, :homepage
  	end
end
