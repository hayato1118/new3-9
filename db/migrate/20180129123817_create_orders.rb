class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :book_id
      t.integer :user_id
      t.integer :price
      t.integer :unit_in_stock
      t.integer :zip
      t.string :address
      t.string :state
      t.string :city
      t.string :street
      t.integer :card_number
      t.integer :freight
      t.string :shipping_method
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
