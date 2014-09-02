
class EventsController < ApplicationController

	def index
		@events = Event.order(:date => :asc, :time => :asc)
		all_dates = Event.order("date DESC").map(&:date)
		@date = Event.all.group_by(&:date)
	end

	

	def show
		@event = Event.find(params[:id])

	end

	def new
		@event = Event.new
		# @event.admin_user_id = Admin_user.first.id
	end

	def create
		@event = Event.create(params.require(:event).permit(:name,:date,:time,:location,:website,:about))
		redirect_to events_path
	end

	def edit
		@event = Event.find(params[:id])

	end

	def update
		@event = Event.find(params[:id])
		if 
			Event.create(param.require(:event).permit(:name,:date,:time))
			redirect_to events_path
		else
			render 'edit'
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end
end

