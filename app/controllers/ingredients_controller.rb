class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_param)
    #redirect_to "/ingredients/#{@ingredient.id}"
    redirect_to ingredient_path(@ingredient.id)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
private
def ingredient_param
  params.require(:ingredient).permit(:name, :smoothie_id)
end


end
