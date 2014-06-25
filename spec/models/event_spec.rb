require 'rails_helper'

describe Event do
	before(:each) do 
		@event = Event.create!(:name => "birthday", :location => "moon")
		@event.save
	end

	it 'should be valid with attributes' do
		expect(@event).to be_valid
	end
  
    it 'should validate the presence of a location' do
  		expect(@event.location).to eq("moon")
    end

    it 'should validate presence of name' do
        expect(@event.name).to eq("birthday")
    end
end
