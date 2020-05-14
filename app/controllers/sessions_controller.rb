class SessionsController < ApplicationController
  before_action :check_logged_in, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:succes] = 'You have logged in successfully'
      redirect_to root_path
    else
      flash.now[:error] = 'Wrong credentials'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:succes] = 'You have logged out successfully'
    redirect_to login_path
  end

  private
  def check_logged_in
    if logged_in?
      flash[:error] = 'You are already logged in'
      redirect_to root_path
    end
  end

end
