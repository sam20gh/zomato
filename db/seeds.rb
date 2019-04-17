# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create(
    name: "hola",
    user_name: "boy",
    pasword: "dfghghdj",
    dob: "37",
    email: "tolani@yahoo.com"
)

Booking.create(
    restaurant_id: 1,
    customer_id: 1

)
Restaurant.create(
    name: "Zen_garden"
)