class Tweet < ApplicationRecord
  has_rich_text :tweet
  belongs_to :user
  has_one_attached :image

  validates :tweet, presence: true
  end
end
