class ProfilesController < ApplicationController
  def edit
    find_user
  end

  def update
    find_user
    if @user.present?
      @user.update_attributes user_params
      flash[:success] = t "controllers.profiles.success"
      redirect_to profile_path
    else
      flasherror
    end
  end

  def flasherror
    flash[:danger] = t "controllers.sessions.registererorr"
    render :edit
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation, :gender, :address, :avatar
  end

  def find_user
    @user = User.find_by id: params[:id]
  end
end
