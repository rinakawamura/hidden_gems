class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user 
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        flash.now[:error] = user.errors.full_messages
        render :new
      end
    else
        flash.now[:error] = ["No user with that email."]
        render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to "/login"
  end
end
