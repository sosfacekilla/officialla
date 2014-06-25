require 'rails_helper'

RSpec.describe EmailsController, :type => :controller do
	describe "Sent Emails" do

  before(:all) do
    @email = UserMailer.create_signup("jojo@yahoo.com", "hey")
    email.should deliver_to("jojo@yahoo.com")
  end

  it "should be set to be delivered to the email passed in" do
    @email.should deliver_to("jojo@yahoo.com")
  end

  it "should contain the user's message in the mail body" do
    @email.should have_body_text("hey")
  end


end

end
