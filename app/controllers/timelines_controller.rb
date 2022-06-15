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
    @event = Event.new
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
    params.require(:timeline).permit(:name, :description, :photo, event_ids: [])
  end


  def eraer(timeline)
    era_array = timeline.eras.map do |era|
      {
        start_date: {
          month: era.start_date.mon,
          day: era.start_date.day,
          year: era.start_date.year
        },
        end_date: {
          month: era.end_date.mon,
          day: era.end_date.day,
          year: era.end_date.year
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
    eventarray = timeline.events.map do |event|
      {
        background: {
          color: "#1B1B19"
        },
        media: {
          url: url_for(event.photo),
          thumbnail: url_for(event.photo)
        },
        start_date: {
          month: event.start_date.mon,
          day: event.start_date.day,
          year: event.start_date.year
        },
        end_date: {
          month: event.end_date ? event.end_date.mon : event.start_date.mon,
          day: event.end_date ? event.end_date.day : event.start_date.day,
          year: event.end_date ? event.end_date.year : event.start_date.year
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
    timelinehash[:eras] = era_array unless era_array.empty?
    return timelinehash
  end
end
