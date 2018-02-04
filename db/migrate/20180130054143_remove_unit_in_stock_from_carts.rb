class RemoveUnitInStockFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :unit_in_stock, :integer
  end
end
