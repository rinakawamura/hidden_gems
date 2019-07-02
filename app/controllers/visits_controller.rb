class VisitsController < ApplicationController
  def create
    @visit = Visit.find_or_create_by(visit_params)
    redirect_to user_path(params[:user_id])
  end

  private

  def visit_params
    params.require(:visit).permit(:user_id, :location_id, "birthdate(1i)", "birthdate(2i)", "birthdate(3i)")
  end
end
