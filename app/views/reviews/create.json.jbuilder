if @review.persisted?
  json.form json.partial!("reviews/new.html.erb", timeline: @timeline, review: Review.new)
  json.inserted_item json.partial!("timelines/review.html.erb", review: @review)
else
  json.form json.partial!("reviews/new.html.erb", timeline: @timeline, review: @review)
end
