module CourseHelper
	def check(is_attend)
		return render 'widgets/enroll' unless is_attend
		render 'widgets/enrolled' if is_attend
	end
end
