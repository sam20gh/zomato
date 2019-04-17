class Restaurant < ApplicationRecord
    has_many :ratings
    has_many :bookings

end
