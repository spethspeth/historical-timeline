class Review < ApplicationRecord
  belongs_to :user
  belongs_to :timeline

  validates :comment, presence: true
end
