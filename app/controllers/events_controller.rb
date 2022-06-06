class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.find(set_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:event).permit(:name, :description, :start_date, :end_date)
  end
end
