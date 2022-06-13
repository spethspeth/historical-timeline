class Review < ApplicationRecord
  belongs_to :user
  belongs_to :timeline

  validates :comment, presence: true
  validates :ratting, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
