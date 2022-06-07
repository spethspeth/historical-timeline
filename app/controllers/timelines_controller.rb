class TimelinesController < ApplicationController
  before_action :set_timeline, only: %i[show]

  def index
    @timelines = Timeline.all
  end

  def show
  end

  def new
    @timeline = Timeline.new
  end

  def create
    @timeline = Timeline.new(timeline_params)
    @timeline.user = current_user
    authorize @timeline
    @timeline.save ? (redirect_to timeline_path(@timeline)) : (render :new)
  end

  private

  def set_timeline
    @timeline = Timeline.find(params[:id])
    authorize @timeline
  end

  def timeline_params
    params.require(:timeline).permit(:name, :description, :start_date, :end_date)
  end
end
