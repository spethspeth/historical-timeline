class TimelinesController < ApplicationController
  before_action :set_timeline, only: %i[show]

  def index
    @timelines = policy_scope(Timeline)
    if params[:query].present?
      @timelines = Timeline.timeline_search(params[:query])
    else
      @timelines = Timeline.all
    end
  end

  def show
    @timelinejson = hasher(set_timeline)
  end

  def new
    @timeline = Timeline.new
    authorize @timeline
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

  def hasher(timeline)
    eventarray = timeline.events.map do |event|
      {
        media: {
          url: url_for(event.photo)
        },
        start_date: {
          month: event.start_date.mon,
          day: event.start_date.day,
          year: event.start_date.year
        },
        end_date: {
          month: event.end_date.mon,
          day: event.end_date.day,
          year: event.end_date.year
        },
        text: {
          headline: event.name,
          text: event.description
        }
      }
    end
    timelinehash = {
      title: {
        text: {
          headline: timeline.name,
          text: timeline.description
        }
      },
      events: eventarray
    }
    return timelinehash
  end
end
