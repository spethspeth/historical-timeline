class EventstimelinesController < ApplicationController
  before_action :set_eventstimeline, only: :destroy

  def create
    @eventstimeline = EventsTimeline.new
    @timeline = Timeline.find(params[:timeline_id])
    @event = Event.find(params[:events_timeline][:event])
    @eventstimeline.timeline = @timeline
    @eventstimeline.event = @event
    authorize @eventstimeline
    if @eventstimeline.save!
      redirect_to timeline_path(@timeline)
    else
      redirect_to edit_timeline_path(@timeline)
    end
  end

  def destroy
    @eventstimeline.destroy
    redirect_to timeline_path(@eventstimeline.timeline)
  end

  private

  def set_eventstimeline
    @eventstimeline = eventstimeline.find(params[:id])
    authorize @eventstimeline
  end
end
