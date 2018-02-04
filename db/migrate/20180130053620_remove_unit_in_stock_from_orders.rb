class RemoveUnitInStockFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :unit_in_stock, :integer
  end
end
