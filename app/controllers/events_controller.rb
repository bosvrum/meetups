class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @comments = Comment.where(event_id: @event).order("created_at DESC")
    @categories = @event.categories
  end

  private

  def event_params
    params.require(:event).permit(:place, :city, :start_date, :end_date)
  end
end
