class UsersController < ApplicationController
  before_action :authorized, only: [:show]
  # skip_before_action :authorized, only: [:index, :new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # byebug
    @user = User.new(user_params)
    byebug
    if @user.valid?
      # byebug
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      # byebug
      flash.now[:error] = @user.errors.full_messages
      render :new
    end
  end

  def show
    set_user
    @visit = Visit.new
  end

  def edit
    set_user
  end

  def update
    set_user
    @user.update(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash.now[:error] = @user.errors.full_messages
        render :edit
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :country_id, :password, :password_confirmation)
  end

end
