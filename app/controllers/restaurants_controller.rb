class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all 
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
    @restaurant = Restaurant.new(restaurant_params[:id])
    redirect_to restaurant
  end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end 

  # def update 
  #   @restaurant = Restaurant.find(params[:id])
  # end 

  # def delete
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  #   redirect_to restaurants_path
  # end 
end
