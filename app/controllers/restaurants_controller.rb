class RestaurantsController < ApplicationController
    before_action :find_restaurants, only: [:index, :show, :search]

    def find_restaurants
        @restaurants = Restaurant.where.not(thumb:[nil, ""])
    end

    def index
        @restaurant = Restaurant.all
        @italian = find_restaurants.where("cuisines like ?", "%italian%")
        @curry = find_restaurants.where("cuisines like ?", "%curry%")
        @chinese = find_restaurants.where("cuisines like ?", "%chinese%")
    end

    def new
        @restaurant = Restaurant.new
    end

    def show
        @restaurant = Restaurant.find(params[:id])
        @rating = Rating.new
    end

    def search
        @restaurants = Restaurant.where(locality_verbose: params[:locality_verbose])
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
