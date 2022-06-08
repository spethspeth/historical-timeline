class BookmarksController < ApplicationController

  def create
    @bookmark = Bookmark.new
    @timeline = Timeline.find(params[:timeline_id])
    @bookmark.timeline = @timeline
    @bookmark.user = current_user
    authorize @bookmark
    if @bookmark.save
      redirect_to dashboard_path
    else
      redirect_to timeline_path(@timeline)
    end
  end

end
