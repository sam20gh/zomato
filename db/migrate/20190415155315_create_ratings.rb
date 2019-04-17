class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.string :restaurant_id
      t.string :customer_id
      t.string :raters
      t.string :comment
      t.string :rating
      t.string :datetime

      t.timestamps
    end
  end
end
