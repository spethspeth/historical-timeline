class Event < ApplicationRecord
  belongs_to :user
  has_many :events_timelines, dependent: :destroy
  has_many :timelines, through: :events_timelines

  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :start_month, inclusion: { in: 1..12, allow_nil: true, message: "Invalid start month, should be 1-12" }
  validates :end_month, inclusion: { in: 1..12, allow_nil: true, message: "Invalid end month, should be 1-12" }

  # start_year is always present, the others are conditional, but month should be present if day is present, and so on
  validates :start_year, presence: true
  validates :start_month, presence: { message: "Cannot assign start day without start month" }, if: :start_day?
  validates :end_month, presence: { message: "Cannot assign end day without end month" }, if: :end_day?
  validates :end_year, presence: { message: "Cannot assign end month without end year" }, if: :end_month?

  # Below chunks are for checking if the day has a valid value for a given month
  validates :start_day, inclusion: { in: 1..31, allow_nil: true, message: "invalid: up to 31 is allowed for the selected month" }, if: proc { |a| a.start_month.odd? }
  validates :start_day, inclusion: { in: 1..30, allow_nil: true, message: "invalid: up to 30 is allowed for the selected month" }, if: proc { |a| a.start_month.even? } && proc { |a| a.start_month != 2 }
  validates :start_day, inclusion: { in: 1..28, allow_nil: true, message: "invalid: up to 28 is allowed for the selected month and year" }, if: proc { |a| a.start_month == 2 } && proc { |a| !Date.leap?(a.start_year) }
  validates :start_day, inclusion: { in: 1..29, allow_nil: true, message: "invalid: up to 29 is allowed for the selected month and year" }, if: proc { |a| a.start_month == 2 } && proc { |a| Date.leap?(a.start_year) }

  validates :end_day, inclusion: { in: 1..31, allow_nil: true, message: "invalid: up to 31 is allowed for the selected month" }, if: proc { |a| a.end_month.nil? ? false : a.end_month.odd? }
  validates :end_day, inclusion: { in: 1..30, allow_nil: true, message: "invalid: up to 30 is allowed for the selected month" }, if: proc { |a| a.end_month.even? } && proc { |a| a.end_month != 2 }
  validates :end_day, inclusion: { in: 1..28, allow_nil: true, message: "invalid: up to 28 is allowed for the selected month and year" }, if: proc { |a| a.end_month == 2 } && proc { |a| a.end_year? ? !Date.leap?(a.end_year) : false }
  validates :end_day, inclusion: { in: 1..29, allow_nil: true, message: "invalid: up to 29 is allowed for the selected month and year" }, if: proc { |a| a.end_month == 2 } && proc { |a| a.end_year? ? Date.leap?(a.end_year) : false }
end
