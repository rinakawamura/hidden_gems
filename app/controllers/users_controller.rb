class UsersController < ApplicationController
  before_action :authorized
  skip_before_action :authorized, only: [:index, :new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.now[:error] = @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.finf(params[:id])
  end

  def update
    @user = User.find(param[:id])
    @user.update(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash.now[:error] = @user.errors.full_messages
        render :edit
    end
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :country_id, :password, :password_confirmation)
  end

end
