if @review.persisted?
  json.form json.partial!("reviews/new.html.erb", timeline: @timeline, review: Review.new)
  if @timeline.user == @review.user
    json.inserted_item json.partial!("timelines/reply.html.erb", review: @review)
  else
    json.inserted_item json.partial!("timelines/review.html.erb", review: @review)
  end
else
  json.form json.partial!("reviews/new.html.erb", timeline: @timeline, review: @review)
end
