class HomeController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	def index
		#load first 8 courses from course model
		@courses = Course.first(8)
		unless user_signed_in?  
			#	@usrname = current_user.name
		    redirect_to new_user_session_path
		end	
	end

	def test
		
	end

	def search
			
	end
end
