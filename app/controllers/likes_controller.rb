class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, recipe_id: @recipe.id)
    @like.save
    redirect_to recipes_path
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, recipe_id: @recipe.id)
    @like.destroy
  end

  private

  def set_like
    @recipe = Recipe.find(params[:recipe_id])
  end

end
