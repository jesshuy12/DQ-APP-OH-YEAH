class SmoothiesController < ApplicationController

  def index
    @smoothies = Smoothie.all
  end

  def new
    @smoothie = Smoothie.new
  end

  def create
    @smoothie = Smoothie.create(name: params[:smoothie][:name])
    #redirect_to "/smoothies/#{@smoothie.id}"
    redirect_to smoothy_path(@smoothie)
  end

  def show
    @smoothie = Smoothie.find(params[:id])

    @ingredient_list = []

    @ingredients = Ingredient.all
    @ingredients.each do |ingredient|
      if ingredient.smoothie_id == @smoothie.id
        @ingredient_list << ingredient.name
      end
    end
  end




end
