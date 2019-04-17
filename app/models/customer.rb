class Customer < ApplicationRecord
    has_many :bookings
    has_many :restaurants, through: :bookings
    has_many :ratings
    has_many :restaurants, through: :ratings

     has_secure_password

    validates :name, presence: true
    validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
    validates :password, :confirmation => true
    validates_length_of :password, :in => 6..20, :on => :create
    validates :age, presence: true
    validates :bio, presence: true
end
