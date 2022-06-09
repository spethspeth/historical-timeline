class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @timelines = policy_scope(Timeline)
  end

  def dashboard
  end

  def timelineviewer
    @bookmarks = Bookmark.where(user_id: current_user)

    # The following 2 timelines are assigned for testing purposes only:
    @timeline1 = Timeline.find(1)
    @timeline2 = Timeline.find(2)
    @combinedtimeline = combiner(@timeline1, @timeline2)
  end

  private

  # This helper method iterates over the events of a user timeline and turns them into an array of hashes

  def eventer(timeline, counter)
    colorarray = ["red", "blue", "green", "yellow"]
    # thumbsarray is just a proof of concept for assigning thumbnails based on origin timeline, it is dumb but it works
    thumbsarray = ["app/assets/images/number_thumbnails/1.png", "app/assets/images/number_thumbnails/2.png", "app/assets/images/number_thumbnails/3.png", "app/assets/images/number_thumbnails/4.png"]
    eventarray = timeline.events.map do |event|
      {
        group: "#{timeline.name}",
        background: {
          color: colorarray[counter]
        },
        media: {
          url: url_for(event.photo),
          thumbnail: thumbsarray[counter]
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
    return eventarray
  end
end

  # This method exists to combine 2 timelines into a single hash to pass to TimelineJS.
  # It is clunky and should probably have a way to receive an arbitrary number of timelines by passing an array of them

def combiner(*args)
  counter = 0
  totaleventarray = []
  args.each do |timeline|
    totaleventarray << eventer(timeline, counter)
    counter += 1
  end
  timelinehash = {
    title: {
      text: {
        headline: "Your timeline",
        text: "Here you can view events from your chosen timelines!"
      }
    },
    events: totaleventarray.flatten
  }
  return timelinehash
end
