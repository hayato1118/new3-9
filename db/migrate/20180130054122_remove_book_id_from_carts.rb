class RemoveBookIdFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :book_id, :integer
  end
end
