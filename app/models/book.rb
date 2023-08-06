class Book < ApplicationRecord
  has_one_attached :image

  #1:NのN側にあたるモデル
  belongs_to :user

  #titleとopinionが存在しているかを確認するバリデーション
  validates :title, presence: true
  validates :body, presence: true

end
