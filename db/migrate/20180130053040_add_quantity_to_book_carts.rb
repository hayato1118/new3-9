class AddQuantityToBookCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :book_carts, :quantity, :integer
  end
end
