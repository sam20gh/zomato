class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :customer_id
      # t.belongs_to :foreign_key :true
      t.string :restaurant_id
      # t.belongs_to :foreign_key :true

      t.timestamps
    end
  end
end
