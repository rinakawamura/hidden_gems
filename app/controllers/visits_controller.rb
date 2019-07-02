class VisitsController < ApplicationController
  def create
    # byebug
    @visit = Visit.find_or_create_by(user_id: visit_params[:user_id], location_id: visit_params[:location_id])

    date = Date.civil(visit_params["visit_date(1i)"].to_i, visit_params["visit_date(2i)"].to_i, visit_params["visit_date(3i)"].to_i)
    @visit.visit_date = date
    @visit.save
    redirect_to user_path(@visit.user)
  end

  def destroy
    @visit = Visit.find(params[:id])
    @visit.delete
    redirect_to user_path(@visit.user)

  end

  private

  # def date_params
  #   params.require(:visit).permit("visit_date(1i)".to_i, "visit_date(2i)".to_i, "visit_date(3i)".to_i)
  # end

  def visit_params
    params.require(:visit).permit(:user_id, :location_id, :visit_date)
  end
end
