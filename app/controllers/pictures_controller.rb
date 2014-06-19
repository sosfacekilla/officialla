class PicturesController < ApplicationController
def create
  @event = event.create( event_params )
end

def new
  @picture = Picture.new
 end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:event).permit(:image)
end
end