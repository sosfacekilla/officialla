require 'spec_helper'

describe EventsController do 

	describe "GET index" do
		before do
			get :index
		end

		it "should render the index template" do
			expect(response).to render_template :index
		end
	end

	describe "GET new" do
		before do
			get :new
		end


		it "should render the new template" do
			expect(response).to render_template :new
		end
	end
end