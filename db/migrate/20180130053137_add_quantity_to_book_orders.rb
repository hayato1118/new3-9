class AddQuantityToBookOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :book_orders, :quantity, :integer
  end
end
