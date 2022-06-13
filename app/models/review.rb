class Review < ApplicationRecord
  belongs_to :user
  belongs_to :timeline
end
