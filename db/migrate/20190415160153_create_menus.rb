class CreateMenus< ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :restaurant_id
      t.string :dish

      t.timestamps
    end
  end
end
