class RemoveTitleFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :title, :string
  end
end
