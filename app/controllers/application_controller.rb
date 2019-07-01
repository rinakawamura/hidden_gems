class ApplicationController < ActionController::Base
  def logged_in?
    !session[:user_id].nil?
  end

  def authorized
    redirect_to '/login' unless logged_in?
  end
end
