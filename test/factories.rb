# This will guess the User class
FactoryGirl.define do
  factory :course do
    sequence :title do |n|
    "swim#{n}"
    end
    numofstudent 5  
  end
  

end