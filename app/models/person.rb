class Person < ApplicationRecord
  # アソシエーション
  belongs_to :user, optional: true
  has_one_attached :image

  # バリデーション
  with_options presence: true do
    validates :height
    validates :weight
    validates :goal
  end
end
