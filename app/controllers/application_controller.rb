class ApplicationController < ActionController::Base

  def logged_in?
    !session[:user_id].nil?
  end

  def authorized
    if !logged_in? 
      flash[:notice] = "Please log in first."
      redirect_to '/login'
    end
  end

  # def current_user
  #   if logged_in?
  #     @current_user = User.find(session[:user_id])
  #   end
  # end
end
