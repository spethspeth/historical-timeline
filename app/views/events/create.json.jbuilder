if @event.persisted?
  json.form json.partial!("events/new.html.erb", timeline: @timeline, event: Event.new)
  json.inserted_item json.partial!("events/new.html.erb", event: @event)
else
  json.form json.partial!("event/new.html.erb", timeline: @timeline, event: @event)
end
