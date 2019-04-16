class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :username
      t.integer :age
      t.string :bio
      t.string :profile_img
      t.boolean :is_admin
      t.timestamps
    end
  end
end
