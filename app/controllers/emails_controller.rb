class EmailsController < ApplicationController

	def index

	end


	def new
		@email = Email.new
	end

	def create
		
		@email = Email.new(params.require(:email).permit(:name, :onlinemail, :title, :message))
		if @email.save
			EmailMailer.welcome_email(@email).deliver
			flash[:success] = "Message Was Sent Successfully"
			redirect_to events_path
		else
			# flash[:error} = "there was a problem sending your message"
				render 'form'
		end
	end


end






	

