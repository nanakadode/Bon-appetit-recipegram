class LikesController < ApplicationController

  def create
    @like = Like.new
    @like.recipe_id == @recipe.id
  end

  def destroy

  end
end
