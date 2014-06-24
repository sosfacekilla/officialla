class EmailsController < ApplicationController



	def new
		@email = Email.new
	end

	def create
		
		@email = Email.new(email_params)
		if @email.save
			flash[:success] = "Message Was Sent Successfully"
			redirect_to :back
		else
			# flash[:error} = "there was a problem sending your message"
				render 'emailform'
	end
end

	protected

	def email_params
		params.require(:email).permit(:name, :onlinemail, :title, :message)

    end

end






	

