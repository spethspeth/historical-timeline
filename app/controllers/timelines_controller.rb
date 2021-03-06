class TimelinesController < ApplicationController
  before_action :set_timeline, only: %i[show edit update destroy]

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
    @bookmark = Bookmark.where(user: current_user, timeline: @timeline)
    @review = Review.new
    @reviews = Review.all
  end

  def new
    @timeline = Timeline.new
    authorize @timeline
  end

  def create
    @timeline = Timeline.new(timeline_params)
    @timeline.user = current_user
    authorize @timeline
      if @timeline.save
        redirect_to dashboard_path
      else
        render :new
      end
  end

  def edit
  end

  def update
    @timeline.update(timeline_params)
    @timeline.save ? (redirect_to timeline_path(@timeline)) : (render :edit)
  end

  def destroy
    @timeline.destroy
    redirect_to timelines_path
  end

  private

  def set_timeline
    @timeline = Timeline.find(params[:id])
    authorize @timeline
  end

  def timeline_params
    params.require(:timeline).permit(:name, :description, :photo, event_ids: [], era_ids: [])
  end


  def eraer(timeline)
    era_array = timeline.eras.map do |era|
      {
        start_date: {
          year: era.start_year,
          month: era.start_month,
          day: era.start_day
        },
        end_date: {
          year: era.end_year,
          month: era.end_month,
          day: era.end_day
        },
        text: {
          headline: era.name,
          text: era.description
        }
      }.compact
    end
    return era_array
  end

  def hasher(timeline)
    era_array = []
    era_array = eraer(timeline) unless timeline.eras.empty?
    eventarray = []
    timeline.events.each do |event|
      eventhash = {
        background: {
          color: "#1B1B19"
        },
        start_date: {
          day: event.start_day,
          month: event.start_month,
          year: event.start_year
        },
        text: {
          headline: event.name,
          text: event.description
        }
      }
      if event.end_year
        eventhash[:end_date] = {
          day: event.end_day,
          month: event.end_month,
          year: event.end_year
        }.compact
      end
      if event.photo.key
        eventhash[:media] = {
          url: url_for(event.photo),
          thumbnail: url_for(event.photo)
        }
      end
      eventarray << eventhash
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
    timelinehash[:eras] = era_array unless era_array.empty?
    return timelinehash
  end
end
