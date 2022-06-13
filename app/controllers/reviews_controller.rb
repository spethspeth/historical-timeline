class ReviewsController < ApplicationController
  before_action :set_review, only: :destroy

  def create
    @review = Review.new
    @timeline = Timeline.find(params[:timeline_id])
    @review.timeline = @timeline
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to dashboard_path
    else
      redirect_to timeline_path(@timeline)
    end
  end

  def destroy
    @review.destroy
    redirect_to timeline_path(@review.timeline)
  end

  private

  def set_review
    @review = Review.find(params[:id])
    authorize @review
  end
end
