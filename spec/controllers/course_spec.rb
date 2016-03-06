require 'rails_helper'

RSpec.describe CourseController, type: :controller do
	describe "GET #indexss" do
		it "responds successfully with an HTTP 200 status code" do
    	  	get :index
      		expect(response).to be_success
      		expect(response).to have_http_status(200)
    	end
    	
    	it "renders the index template" do
	      get :index
	      expect(response).to render_template("index")
	    end
	end	

	describe "GET #showss" do
		it "responds successfully with an HTTP 200 status code" do
    	  	get :show , id:1
      		expect(response).to be_success
      		expect(response).to have_http_status(200)
    	end
    	it "render show tempalte" do
     		get :show, id: 1
      		response.should render_template :show
   		end
	end	

	
end	