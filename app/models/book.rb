class Book < ApplicationRecord
  has_one_attached :image

  #1:NのN側にあたるモデル
  belongs_to :user
end
