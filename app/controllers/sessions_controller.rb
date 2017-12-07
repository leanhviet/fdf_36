class SessionsController < ApplicationController
  layout "custom"

  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == Settings.sessions.remember ? remember(user) : forget(user)
      login_success
    else
      flash.now[:danger] = t "controllers.sessions.erorr"
      render :new
    end
  end

  def destroy
    log_out if is_logged_in?
    redirect_to root_path
  end

  private

  def login_success
    flash[:success] = t "controllers.sessions.welcome"
    redirect_to root_path
  end
end
