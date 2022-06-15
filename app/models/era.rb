class Era < ApplicationRecord
  belongs_to :user

  has_many :eras_timelines
  has_many :timelines, through: :eras_timelines

  validates :start_date, presence: true
  validates :end_date, presence: true
end
