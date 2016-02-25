# This will guess the User class
FactoryGirl.define do
  factory :course do
     sequence :main_picture_source do |n|
      "#{n}"
      end
      sequence :title do |n|
      "title#{n}"
      end
      #name
      #coach_id
      numofstudent 1
      #numoflesson 

 
      after(:create){ |course|
          2.times{course.users << FactoryGirl.create(:user , type:'Student')}
      }
   
  end
  


   factory :user do
      #type 'Student!! big s'
     	#name 		"max"
      sequence :name do |n|
        "user#{n}"
      end
      sequence :password do |n|
        "1212343#{n}"
      end 
      sequence :email do |n|
       "user#{n}@gmail.com"
      end

      numofcourse 1
   end


   factory :relation_user_course do
      association :course
      association :user
   end
end