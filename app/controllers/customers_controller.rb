class CustomersController < ApplicationController
    has_many :bookings
    has_many :restaurants, through: :bookings
    has_many :ratings
    has_many :restaurants, through: :ratings
end
