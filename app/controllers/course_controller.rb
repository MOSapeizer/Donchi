class CourseController < ApplicationController
	before_action :authenticate_user!, except: [:show]
	def index
		
	end

	def show
		if user_signed_in?
			
			@user = current_user #return user object
			@course = Course.find_by name: "course1"
			@is_attend = has_relation(@user,@course)

		end

	end

	def create
		
	end


	def sign_up_course
		@user = current_user
		@course = Course.find_by name:"course1"
		unless has_relation(@user,@course)
			RelationUserCourse.create(:user_id => @user.id , :course_id => @course.id)
		end
		UserMailer.send_email(@user,@course).deliver_now!
		redirect_to :action => "show" 
	end


	def has_relation(user,course)
		RelationUserCourse.find_by(user_id: user.id , course_id: course.id)
	end	
end
