class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 	has_many :relation_user_courses
    has_many :courses, :through => :relation_user_courses

  	devise :database_authenticatable, :registerable,
       	   :recoverable, :rememberable, :trackable, :validatable
end
