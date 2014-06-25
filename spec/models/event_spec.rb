require 'spec_helper'

describe Event do
	before do 
		@event = Event.create!(name: "klflks", )
	end

	it 'should be valid with valid attributes' do
		expect(@event).to be_valid
	end
  
  it "should have many pictures" do
  	expect(:pictures).to be_valid
  end

  it "should validate presence of" do
    expect(:name).to be_valid
  end
 end
