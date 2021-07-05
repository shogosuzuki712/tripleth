class Tweet < ApplicationRecord
  has_rich_text :content
  belongs_to :user
  has_one_attached :image
  validates :title, presence: true
end
