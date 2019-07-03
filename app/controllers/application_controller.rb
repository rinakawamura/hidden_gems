class ApplicationController < ActionController::Base

  def logged_in?
    !session[:user_id].nil?
  end

  def authorized
    redirect_to '/login' unless logged_in?
  end

  # def current_user
  #   if logged_in?
  #     @current_user = User.find(session[:user_id])
  #   end
  # end
end
