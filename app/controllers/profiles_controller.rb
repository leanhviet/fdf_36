class ProfilesController < ApplicationController
  before_action :find_user, only: [:edit, :update]

  def edit; end

  def update
    if @user.update_attributes user_params
      update_success
    else
      flasherror
    end
  end

  def flasherror
    flash[:danger] = t "controllers.profiles.erorr"
    render :edit
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation, :gender, :address, :avatar
  end

  def find_user
    @user = User.find_by id: params[:id]
    unless @user.present?
      flash[:danger] = t ".none"
      redirect_to root_url
    end
  end

  def update_success
    flash[:success] = t "controllers.profiles.success"
    redirect_to profile_path
  end
end
