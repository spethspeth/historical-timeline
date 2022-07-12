class Event < ApplicationRecord
  belongs_to :user
  has_many :events_timelines, dependent: :destroy
  has_many :timelines, through: :events_timelines

  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :start_month, inclusion: { in: 1..12, allow_nil: true }
  validates :end_month, inclusion: { in: 1..12, allow_nil: true }

  # start_year is always present, the others are conditional, but month should be present if day is present, and so on
  validates :start_year, presence: true

  validates :start_month, presence: { message: "Cannot assign start day without start month" }, if: :start_day?
  validates :end_month, presence: { message: "Cannot assign end day without end month" }, if: :end_day?
  validates :end_year, presence: { message: "Cannot assign end month without end year" }, if: :end_month?
end
