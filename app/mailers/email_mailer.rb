class EmailMailer < ActionMailer::Base
  default from: "alexandra.d.sos@gmail.com" # Replace YOUR_EMAIL_ADDRESS_HERE with your gmail address

  def welcome_email(email) # wizard is going to be a var that stores whichever email is passed in via the form

  	@email = email # Here, we set an instance variable that matches wizard (we use an instance variable because we're going to refer to this in the email templates)
  	mail(to: 'alexsos@laguestlist.com').deliver # Set up your to and subject fields!

  end



end