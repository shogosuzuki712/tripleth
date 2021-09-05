class DietMenu < ApplicationRecord
  validates :title, presence: true
  validates :genre_id, numericality: { other_than: 1 }

  belongs_to :user
  has_rich_text :text
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end
