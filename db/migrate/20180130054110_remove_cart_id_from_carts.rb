class RemoveCartIdFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :cart_id, :integer
  end
end
