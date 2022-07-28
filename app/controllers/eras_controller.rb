class ErasController < ApplicationController
  before_action :set_era, only: :destroy

  def new
    @era = Era.new
    authorize @era
  end

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
    redirect_to dashboard_path
  end

  private

  def set_era
    @era = Era.find(params[:id])
    authorize @era
  end

  def era_params
    params.require(:era).permit(:name, :description, :start_year, :start_month, :start_day, :end_year, :end_month, :end_day)
  end
end
