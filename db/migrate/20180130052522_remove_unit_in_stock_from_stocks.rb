class RemoveUnitInStockFromStocks < ActiveRecord::Migration[5.1]
  def change
    remove_column :stocks, :unit_in_stock, :integer
  end
end
