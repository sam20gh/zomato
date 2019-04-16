class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.string :comment
      t.integer :rating
      t.timestamps
    end
  end
end
