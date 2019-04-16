class Customer < ApplicationRecord
    def index
        Restaurants.all
    end
end
