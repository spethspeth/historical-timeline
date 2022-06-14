class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @timelines = policy_scope(Timeline)
    @hometimelines = combiner(Timeline.first(2))
  end

  def dashboard
    @timelines = Timeline.where(user: current_user)
    @events = Event.where(user: current_user)
    @bookmarks = Bookmark.where(user: current_user)
    @reviews = Review.where(user: current_user)
    @eras = Era.where(user: current_user)
    @era = Era.new
  end

  def timelineviewer
    if params[:bookmark]
      @selected = params[:bookmark][:bookmarks].map.with_index do |b, i|
        unless i.zero?
          Timeline.find(b)
        end
      end.reject { |a| a.nil? }
    else
      @selected = Timeline.first(2)
    end
    @bookmarks = Bookmark.where(user_id: current_user)
    @combinedtimeline = combiner(@selected)
  end

  private

  # This helper method iterates over the events of a user timeline and turns them into an array of hashes

  def eventer(timeline, counter)
    colorarray = ["#1B1B19", "#982226", "#959595"]
    eventarray = timeline.events.map do |event|
      {
        group: "#{timeline.name}",
        unique_id: "color#{counter + 1}",
        background: {
          color: colorarray[counter]
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
      }.compact
    end
    return eventarray
  end


  # This helper method iterates over the eras of a user timeline and turns them into an array of hashes

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

  # This method exists to combine 2 timelines into a single hash:

  def combiner(args)
    counter = 0
    totaleventarray = []
    totaleraarray = []
    args.each do |timeline|
      totaleventarray << eventer(timeline, counter)
      totaleraarray << eraer(timeline) unless timeline.eras.empty?
      counter += 1
    end
    # args.each do |timeline|
    #   totaleraarray << eraer(timeline) unless timeline.eras.empty?
    # end
    timelinehash = {
      title: {
        text: {
          headline: "Your timelines",
          text: "Here you can view events from your chosen timelines! Use the arrow buttons to scroll through events, or click on them for more information."
        }
      },
      events: totaleventarray.flatten,
    }
    timelinehash[:eras] = totaleraarray.flatten unless totaleraarray.empty?
    return timelinehash
  end
end
