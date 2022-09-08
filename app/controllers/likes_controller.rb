class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, recipe_id: @recipe.id)
    if @like.save
      redirect_to recipe_path(@recipe), success: 'Liked'
    else
      redirect_to recipe_path(@recipe), danger: 'Like failed'
    end
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, recipe_id: @recipe.id)
    @like.destroy
    redirect_to recipe_path(@recipe)
  end

  private

  def set_like
    @recipe = Recipe.find(params[:recipe_id])
  end

end
