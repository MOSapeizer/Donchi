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
end