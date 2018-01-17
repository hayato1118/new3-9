class PostComment < ApplicationRecord


#コメント必須
validates :comment, presence: true

belongs_to :user
belongs_to :book
end
