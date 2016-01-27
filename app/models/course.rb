class Course < ActiveRecord::Base
	has_many :lessons # 複數
end
