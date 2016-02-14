# This will guess the User class
FactoryGirl.define do
  factory :course do
    sequence :title do |n|
    "swim#{n}"
    end
    numofstudent 5  
  end
  
   factory :user do
   	name 		"max"
    email       "user@example.com"
    password    "foobar1234"
  end

end