if @timeline.persisted?
  #json.form json("timelines/new.html.erb", timeline: @timeline, timeline: Timeline.new)
  json.flash json.partial!("shared/flashes.html.erb", notice: "Successfully created!")
else
  #json.form json("timelines/new.html.erb", timeline: @timeline, timeline: @timeline)
  json.flash json.partial!("shared/flashes.html.erb", alert: "Cannot be saved!")
end
