class EventsController < ApplicationController
	before_action :correct_user

  def new
  	@event = @user.events.build
  end

  def create
  	@event = @user.events.build(event_params)
    if @event.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
  	@event = Event.find_by(id: params[:id])
  end

  def index
  	@events = Event.all
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.attendees.create(id: params[:attendee_id])
    redirect_to @event
  end

  private
  	def event_params
  		params.require(:event).permit(:title, :description, :date)
  	end

  	def correct_user
  		@user = current_user
  	end
end
