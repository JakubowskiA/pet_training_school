class UsersController < ApplicationController
  before_action :authorized?, except: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(session[:user_id])
    @user_pets = @user.pets
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def pets
    @user = User.find(params[:id])
    @pets = @user.pets
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :username)
  end
end
