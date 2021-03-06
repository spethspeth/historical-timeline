class EventsController < ApplicationController
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
    if @event.save
      redirect_to event_path(@event)
    else
      flash[:error] = @event.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    # TODO: implement flash messages for when the input is invalid
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      flash[:error] = @event.errors.full_messages
    end
  end

  def destroy
    @event.destroy
    redirect_to dashboard_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end

  def event_params
    params.require(:event).permit(:name, :description, :start_year, :start_month, :start_day, :end_year, :end_month, :end_day, :photo)
  end
end
