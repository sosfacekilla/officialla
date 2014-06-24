class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def new
  		@picture = Picture.new
 	end

	def create
  		@picture = Picture.new(post_params)
  		if @picture.save
	 		redirect_to pictures_path 
		else
	        render 'new' 
	    end

	end

	def destroy
		Picture.find(params[:id]).destroy
		@picture.destroy
		redirect_to pictures_path
	end
                                                                                                            





	private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

	def post_params
  		params.require(:picture).permit(:avatar)
	end

	def set_post
		@picture = Picture.find(params[:id])
	end
end


