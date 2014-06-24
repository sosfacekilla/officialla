class EmailsController < ApplicationController

	def index

	end


	def new
		@email = Email.new
	end

	def create
		
		@email = Email.new(params.require(:email).permit(:name, :onlinemail, :title, :message))
		if @email.save
			flash[:success] = "Message Was Sent Successfully"
			redirect_to :back
		else
			# flash[:error} = "there was a problem sending your message"
				render 'form'
		end
	end


end






	

