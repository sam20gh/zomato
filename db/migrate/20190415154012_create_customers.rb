class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :dob
      t.string :bio
      t.string :user_name
      t.string :pasword
      t.string :email
      

      t.timestamps
    end
  end
end
