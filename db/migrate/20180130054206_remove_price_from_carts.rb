class RemovePriceFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :price, :integer
  end
end
