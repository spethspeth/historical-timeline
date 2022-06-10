if @timeline.persisted?
  json.form json("timelines/new.html.erb", timeline: @timeline, timeline: Timeline.new)
else
  json.form json("timelines/new.html.erb", timeline: @timeline, timeline: @timeline)
end
