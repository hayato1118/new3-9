class CreateBookCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :book_carts do |t|
      t.integer :book_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
