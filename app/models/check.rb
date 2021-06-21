class Check < ApplicationRecord
  with_options presence: true do
    validates :weight
    validates :start_time
  end

  belongs_to :user
  has_one_attached :image
end
