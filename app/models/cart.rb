class Cart < ApplicationRecord
	has_many :book_carts, :dependent => :destroy
	belongs_to :user
end
