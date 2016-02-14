require 'rails_helper'
$count = 0
RSpec.describe HomeController, type: :controller do
	describe "#index" do
		before(:each) do
	   		#get :index
	   		@course = Course.first(8)
		end	 

		context "initial"do
			it "correct http response" do
				sign_in
				get :index
				expect(response).to have_http_status(200)
			end
			it "render to home/index template"do
				sign_in
				get :index
				expect(response).to render_template("index")
			end
		end

		context "when user is sign in"do

		end
		context "when user is sign out "do
			it "redirect to devise sign_in page"do
				sign_in nil
				get :index
				expect(response).to have_http_status(302)
			end
		end

		context "factory test" do
			it "factory test" do
				user =  FactoryGirl.create(:user)
				expect(user.email).to eq('user@example.com')
			end
		end	
	end	
	describe "let test" do
		#let is lazy-loading & value is cached(same) in same example
		let(:count) { $count += 1 }

		  it "memoizes the value" do
		    expect(count).to eq(1) #trigger let block
		    expect(count).to eq(1) #won't trigger let block
		    expect(count).to eq(1) #won't trigger let block
		  end

		  it "is not cached across examples" do
		    expect(count).to eq(2) #trigger let block , count=1+1
		  end

		  it "is not cached across examples" do
		    expect(count).to eq(3) #trigger let block , count=2+1
		  end
	end	
end	