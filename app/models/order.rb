class Order < ApplicationRecord
	has_many :book_orders , :dependent => :destroy
	belongs_to :user
end
