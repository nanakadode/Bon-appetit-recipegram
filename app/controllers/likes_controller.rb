class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, recipe_id: @recipe.id)
    @like.save
    redirect_to user_path
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, recipe_id: @recipe.id)
    @like.destroy
    redirect_to user_path
  end

  private

  def set_like
    @recipe = Recipe.find(params[:recipe_id])
  end

end
