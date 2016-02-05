# This will guess the User class
FactoryGirl.define do
  factory :course do
    title "fly"
    numofstudent 5  
    factory :course_with_lesson do
      after(:create) do |course|
        create(:lesson, course:course)
      end
    end

  end


  factory :lesson do
      information "flying lesson1"

  end

end