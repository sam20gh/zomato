class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.datetime :date
      t.time :time
      t.integer :num_people
      t.timestamps
    end
  end
end
