# This will guess the User class
FactoryGirl.define do
  factory :course do
      #coach_id
      #numofstudent 
      #numoflesson 
      sequence :name do |n|
        "course#{n}"
      end 
      sequence :main_picture_source do |n|
      "#{n}"
      end
      sequence :title do |n|
      "title#{n}"
      end

      ignore do 
          count 3 #use for eval input attribute
      end

      trait :with_course do
        after(:create){ |course,eval|
            eval.count.times{course.users << FactoryGirl.create(:user,numofcourse:1)}
        }
      end 

   
  end
  


   factory :user do
      type Student
      #numofcourse 
      sequence :name do |n|
        "user#{n}"
      end
      sequence :password do |n|
        "1212343#{n}"
      end 
      sequence :email do |n|
       "user#{n}@gmail.com"
      end

      ignore do
        count 3 #use for eval input attribute
      end
 
      trait :with_user do
          after(:create){ |user,eval|
            eval.count.times{user.courses << FactoryGirl.create(:course,numofstudent:2)}
          } 
      end

   end


   factory :relation_user_course do
      association :course
      association :user
   end
end