require 'spec_helper'

describe Event do
	before(:each) do 
		@event = Event.create!(:name => "birthday" )
		@event.save
	end

	it 'should be valid with valid attributes' do
		expect(@event).to be_valid
	end
  
    it 'should have many pictures' do
  		expect(@pictures).to be_valid
    end

    it 'should validate presence of name' do
        expect(@event.name).to eq("birthday")
    end
end
