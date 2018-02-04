class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable

attachment :image
attachment :profile_image
#bookと紐ずけ(1)
has_many :books
has_many :post_comments, dependent: :destroy
has_one :cart
has_many :orders
#ユーザー名は2~20文字とする
validates :name, length: { minimum: 2 }
validates :name, length: { maximum: 20 }
#自己紹介文の長さは最大50文字とする
validates :introduction, length: { maximum: 50 }
#ユーザー名が空欄の場合はエラーメッセージを表示する
validates :name, presence: true
#メールアドレスが空欄の場合はエラーメッセージを表示する
validates :email, presence: true


#電話番号が空欄の場合はエラーメッセージを表示する
validates :mobile, length: { is: 11 }, on: :test
#郵便番号が空欄の場合はエラーメッセージを表示する
validates :zip, length: { is: 7 }, on: :test
#都道府県名が空欄の場合はエラーメッセージを表示する
validates :state, presence: true, on: :test
#市町村名が空欄の場合はエラーメッセージを表示する
validates :city, presence: true, on: :test
#町名以下が空欄の場合はエラーメッセージを表示する
validates :street, presence: true, on: :test
#プロフィール画像が空欄の場合はエラーメッセージを表示する
validates :profile_image, presence: true, on: :test
#introductionが空欄の場合はエラーメッセージを表示する
validates :introduction, presence: true, on: :test
end

