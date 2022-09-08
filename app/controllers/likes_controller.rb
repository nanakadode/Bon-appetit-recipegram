class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, recipe_id: params[:id])
    if @like.save
      redirect_to recipes_path, success: 'Liked'
    else
      redirect_to recipes_path, danger: 'Like failed'
    end
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, recipe_id:  params[:id])
    @like.destroy
    redirect_to recipes_path
  end

  private

  # def set_like
  #   @recipe = Recipe.find(params[:recipe_id])
  # end

end
