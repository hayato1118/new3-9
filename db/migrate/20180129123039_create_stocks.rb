class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.integer :book_id
      t.integer :unit_in_stock

      t.timestamps
    end
  end
end
