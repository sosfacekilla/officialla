class HomeController < ApplicationController
  def home
    @events = Event.all

		# @route_start = Stop.find(Route.first.route_stops.order("stop_sequence ASC").map(&:stop_id))
		# @route_end = Route.first.route_stops.order("stop_sequence ASC").last.stop
  end

  def index
    @albums = Album.all
    @events = Event.order(:date => :asc, :time => :asc)
  end

  def show
    @album = Album.find(params[:id])
    @event = Event.find(params[:id])
  end

  def new
    @album = Album.new
    @event = Event.new
  end

  def edit
    @album = Album.find(params[:id])
    @event = Event.find(params[:id])
  end

  def create
    @album = Album.create(params[:album])
    respond_to do |format|
      if @album.save
      #blah blah
     end
  end

  def update
    @album = Album.find(params[:id])
    respond_to do |format|
      if @album.update_attributes(params[:album])
        flash[:notice] = 'Album was successfully updated.'
      
      end
    end
    @event = Event.find(params[:id])
		if 
			Event.create(param.require(:event).permit(:name,:date,:time))
			redirect_to events_path
		else
			render 'edit'
		end
    end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    @event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
  end
end
#application_helper.rb
module ApplicationHelper
  def setup_album(album)
      returning(album) do |a|
        a.pictures.build if a.pictures.empty?
      end
    end

end

end