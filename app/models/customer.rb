class Customer < ApplicationRecord
    has_many :ratings
    has_many :rated_restaurants, through: :ratings, source: :restaurant
    has_many :bookings
    has_many :restaurants, through: :bookings
end




