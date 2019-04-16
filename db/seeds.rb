# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Restaurant.delete_all
terms = (1..20).to_a
terms.each do |term|    
        encoded_url = URI.encode ("https://developers.zomato.com/api/v2.1/search?entity_id=61&entity_type=city&start=#{20 * (term -1)}&count=50&category=1")
        response = RestClient.get(encoded_url, 'user-key': 'b8eaea0c7a4e6149a685e2fadb50d996')
        data = JSON.parse(response)
    

        data['restaurants'].each do |t|
  
          Restaurant.find_or_create_by(
            name: t['restaurant']["name"], 
            website: t['restaurant']["url"],
            address: t['restaurant']["location"]["address"],
            locality: t['restaurant']["location"]["locality"], 
            latitude: t['restaurant']["location"]["latitude"],
            longitude: t['restaurant']["location"]["longitude"], 
            zipcode: t['restaurant']["location"]["zipcode"],
            locality_verbose: t['restaurant']["location"]["locality_verbose"], 
            cuisines: t['restaurant']["cuisines"],
            photos_url: t['restaurant']["photos_url"],
            menu_url: t['restaurant']["menu_url"],
            thumb: t['restaurant']["thumb"])
          
        end
end