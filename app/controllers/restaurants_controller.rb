class RestaurantsController < ApplicationController
    def index
        @restaurant = Restaurant.all
        @restaurants = Restaurant.where.not(thumb:[nil, ""])
    end

    def new
        @restaurant = Restaurant.new
    end
    def show
        @restaurant = Restaurant.find(params[:id])
        @restaurants = Restaurant.where.not(thumb:[nil, ""])
        @rating = Rating.new
    end

     def add_rating
     restaurant = Restaurant.find(params[:id])

    rating = Rating.create(
      comment: params[:rating][:comment],
      restaurant: restaurant,
      customer_id: @current_customer.id, 
      rating: params[:rating][:rating]
    )
        redirect_to restaurant_path(restaurant)
  end

    def create
        @restaurant = Restaurant.create(restaurant_params)
        redirect_to @restaurant
    end
    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :rating, :comment)
    end

end
