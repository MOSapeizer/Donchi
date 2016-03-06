class CourseController < ApplicationController
	before_action :authenticate_user!, except: [:show]
	def index
		
	end

	def show
		if user_signed_in?
			@user = current_user
			@course = Course.find_by name: "course1"
			@has = has_relation(@user,@course)

		end

	end

	def create
		
	end


	def sign_in
		@user = current_user
		@course = Course.find_by name:"course1"
		@relation = RelationUserCourse.create(:user_id => @user.id , :course_id => @course.id)

		redirect_to :action => "show" 
	end

	def has_relation(user,course)
		RelationUserCourse.find_by(user_id: @user.id , course_id: @course.id).nil?

	end	
end
