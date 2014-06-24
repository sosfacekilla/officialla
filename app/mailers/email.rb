class Email < ActionMailer::Base
 default from: "alexsos@laguestlist.com"

  def index

  	@email = email 
  	mail{to= alexsos@laguestlist.com}

  end
end