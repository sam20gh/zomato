class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :website
      t.string :address
      t.string :locality
      t.string :latitude
      t.string :longitude
      t.string :zipcode
      t.string :locality_verbose
      t.string :cuisines
      t.string :photos_url
      t.string :menu_url
      t.timestamps
    end
  end
end
