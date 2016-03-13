class Course < ActiveRecord::Base
	has_many :lessons # 複數
	has_many :relation_user_courses
    has_many :users, :through => :relation_user_courses
end
