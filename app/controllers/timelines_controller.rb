class TimelinesController < ApplicationController
  def index
    @timelines = Timeline.all
  end

  def show
    @timeline = Timeline.find(params[:id])
  end

  def new
    @timeline = Timeline.new
  end

  def create
    @timeline = Timeline.new(timeline_params)
    @timeline.user = current_user
    @timeline.save ? (redirect_to timeline_path(@timeline)) : (render :new)
  end

  private

  def timeline_params
    params.require(:timeline).permit(:name, :description, :start_date, :end_date)
  end
end
