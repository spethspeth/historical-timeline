class EventsTimeline < ApplicationRecord
  belongs_to :event
  belongs_to :timeline
end
