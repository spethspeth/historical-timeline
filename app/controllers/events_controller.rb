class EventsController < ApplicationController
  respond_to :js, :html
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @events = policy_scope(Event)
  end

  def new
    @event = Event.new
    authorize @event
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    respond_to do |format|
      if @event.save
        format.html { redirect_to edit_event_path(@event) }
        format.json
      else
        format.html { render "timelines/new" }
        format.json
      end
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end

  def event_params
    params.require(:event).permit(:name, :description, :start_date, :end_date)
  end
end
