class BookmarksController < ApplicationController
  before_action :set_bookmark, only: :destroy

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

  def destroy
    @bookmark.destroy
    redirect_to dashboard_path
    # redirect_to timeline_path(@bookmark.timeline)
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark
  end
end
