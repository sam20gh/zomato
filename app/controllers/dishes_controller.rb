class DishesController < ApplicationController
  def index
    @dishes = Dishe.all 
  end

  def show
    @dishe = Dishe.find(params[:id])
  end
end
