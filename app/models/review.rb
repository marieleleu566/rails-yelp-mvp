class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }, numericality: { only_integer: true }
  validates :content, presence: true
end
