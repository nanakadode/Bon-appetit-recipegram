class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  # before_action :authenticate_user!, only: [:likes]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to users_path, alert: "You can't edit this user's profile."
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user), notice: 'User information has been updated.'
    else
      render :edit
    end
  end

  def likes
    @user = User.find(params[:id])
    likes = Like.where(user_id: @user.id).pluck(:recipe_id)
    @like_recipes = Recipe.find(likes)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :profile, :profile_img)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
