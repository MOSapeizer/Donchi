require 'rails_helper'

RSpec.describe User, type: :model do 
	it "information to be nil" do
		user1 = User.create!(email: "auck@gmail.com", password: "password")
		expect(user1.information).to eq nil
	end	
end
