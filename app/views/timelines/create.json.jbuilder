if @timeline.persisted?
  json.flash json.partial!("shared/flashes.html.erb", notice: "Successfully created!")
else
  json.flash json.partial!("shared/flashes.html.erb", alert: "Cannot be saved!")
end
