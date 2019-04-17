class Rating < ApplicationRecord
    # belongs_to :rated_restaurant, foreign_key: "restaurant_id", class_name: "Restaurant"
    # belongs_to :rater, foreign_key: "customer_id", class_name: "Customer"

    belongs_to :restaurant
    belongs_to :customer
end
