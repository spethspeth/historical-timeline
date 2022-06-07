class TimelinesController < ApplicationController
  def index
    @timelines = Timeline.all
  end

  def show
    @timeline = Timeline.find(params[:id])
  end
end
