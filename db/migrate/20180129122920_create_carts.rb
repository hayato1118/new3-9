class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :cart_id
      t.integer :book_id
      t.integer :user_id
      t.integer :price
      t.integer :unit_in_stock

      t.timestamps
    end
  end
end
