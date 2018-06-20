class PizzasController < ApplicationController
  def new
    @pizza=Pizza.new
    @recipe=Recipe.all
  end

  def create
    @pizza=Pizza.new(pizza_params)
    respond_to do |format|
      if @pizza.save
        format.html { redirect_to @recipe}
        format.json { render :index, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end
end
