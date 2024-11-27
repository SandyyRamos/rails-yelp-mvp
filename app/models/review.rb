class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5, message: "must be an integer between 0 and 5" }
end
