class HomeController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	def index
		#load first 8 courses from course model
		@courses = Course.first(8)
		
	end

	def test
		
	end

	def search
			
	end
end
