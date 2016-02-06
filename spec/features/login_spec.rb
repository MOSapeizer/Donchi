require 'rails_helper'

RSpec.describe "home page", type: :request do
	it "show sign out after login" do
		user = User.create!(email: "fuck@gmail.com", password: "password")
		visit '/'

		click_link 'sign in'

		fill_in "user_email", with: "fuck@gmail.com"
		fill_in "user_password", with: "password"

		click_button "Log in"

		expect(page).to have_selector(".login, .pull-right", :text => "sign out")
	end

	it "show sign in if user have not sign in" do

	end	


	it "show first 8 courses in 熱門課程 from model course"do
		Course.create!(title: "swim")
		visit '/'
		course1 = Course.find_by_title("swim")
		expect(course1.title).to eq "swim"
	end

	it "User click any one of 熱門課程 , redirect to course page"do

	end

	it "User search for specific course , redirect to specific course if keyword hit" do

	end	

	it "User search for specific course , show 'no course find' if keyword miss" do

	end	
end