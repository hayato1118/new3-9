class AddTotalPriceToBookOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :book_orders, :total_price, :integer
  end
end
