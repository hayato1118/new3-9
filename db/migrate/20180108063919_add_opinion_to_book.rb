class AddOpinionToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :opinion, :string
  end
end
