class ReviewsController < ApplicationController
  before_action :set_review, only: :destroy

  def create
    @review = Review.new(review_params)
    @timeline = Timeline.find(params[:timeline_id])
    @review.timeline = @timeline
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to timeline_path(@timeline, anchor: "review-#{@review.id}")
    else
      redirect_to timeline_path(@timeline)
    end
  end

  def destroy
    @review.destroy
    redirect_to timeline_path(@review.timeline)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
    authorize @review
  end
end
