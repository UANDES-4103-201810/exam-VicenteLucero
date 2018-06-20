class RecipesController < ApplicationController
  def index
    @recipes=Recipe.all
  end

  def show
    @recipe=Recipe.find(params[:id])
  end

  def new
    @recipe=Recipe.new
    @ingredients=Ingredient.all
  end

  def edit

  end

  def create
    @recipe=Recipe.new(recipe_params)
    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe}
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @recipe=Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :ingredient_id, :price, :avatar)
  end
end
