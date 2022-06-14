class ErasController < ApplicationController
  before_action :set_era, only: :destroy

  def create
    @era = Era.new(era_params)
    @era.user = current_user
    authorize @era
    if @era.save
      redirect_to dashboard_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @era.destroy
    redirect_to timeline_path(@era.timeline)
  end

  private

  def set_era
    @era = Era.find(params[:id])
    authorize @era
  end

  def era_params
    params.require(:era).permit(:name, :description, :start_date, :end_date)
  end
end
