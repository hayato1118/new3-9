class Book < ApplicationRecord

#投稿日が空欄の場合はエラーメッセージを表示する
validates :date, presence: true
#投稿時のタイトル必須
validates :title, presence: true
#投稿時の本文必須
validates :opinion, presence: true
#投稿本文の長さは最大200文字とする
validates :opinion, length: { maximum: 200 }
#priceが1000以上でなければならない
validates :price, :numericality => { :greater_than_or_equal_to => 1000 }
#画像が必須
validates :image, presence: true

attachment :image
#Userと紐ずけ(N)
belongs_to :user
has_one :stock

has_many :book_carts, :dependent => :destroy
has_many :book_orders
has_many :post_comments, dependent: :destroy

end