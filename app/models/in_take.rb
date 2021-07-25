class InTake < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :food_category_id, numericality: {other_than: 1}
    validates :food_id, numericality: {other_than: 1}
    validates :start_time
  end
end
