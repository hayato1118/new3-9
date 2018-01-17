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
#ユーザー名が空欄の場合はエラーメッセージを表示する
validates :name, presence: true
#introductionが空欄の場合はエラーメッセージを表示する
validates :introduction, presence: true, on: :edit #反映していない
#ユーザー名は2~20文字とする
validates :name, length: { minimum: 2 }
validates :name, length: { maximum: 20 }
#自己紹介文の長さは最大50文字とする
validates :introduction, length: { maximum: 50 }
end

