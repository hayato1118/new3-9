class RemoveCardNumberFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :card_number, :integer
  end
end
