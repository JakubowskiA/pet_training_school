class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user] = owner
      redirect_to owner_path(owner)
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user] = nil
  end
end
