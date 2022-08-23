class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    # @updated_user = User.update(user_params)
    # @updated_user.save
  end

  private

  def user_params
    params.require(:user).permit(:username, :profile_image, :email)
  end

end
