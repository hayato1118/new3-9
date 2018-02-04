class AddMobileToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :mobile, :string
  end
end
