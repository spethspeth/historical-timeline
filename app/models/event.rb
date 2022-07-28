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

  validate :start_month_days, if: :start_day?
  validate :end_month_days, if: :end_day?

  private

  def start_month_days
    err = false
    days = 0
    case
    when [1, 3, 5, 7, 8, 10, 12].include?(start_month)
      err, days = true, 31 unless start_day.in? 1..31
    when [4, 6, 9, 11].include?(start_month) && start_month != 2
      err, days = true, 30 unless start_day.in? 1..30
    when start_month == 2
      if Date.leap?(start_year)
        err, days = true, 29 unless start_day.in? 1..29
      else
        err, days = true, 28 unless start_day.in? 1..28
      end
    end
    errors.add(:start_day, "invalid: up to #{days} is allowed for the selected month") if err
  end

  def end_month_days
    err = false
    days = 0
    case
    when [1, 3, 5, 7, 8, 10, 12].include?(end_month)
      err, days = true, 31 unless end_day.in? 1..31
    when [4, 6, 9, 11].include?(end_month) && end_month != 2
      err, days = true, 30 unless end_day.in? 1..30
    when end_month == 2
      if Date.leap?(end_year)
        err, days = true, 29 unless end_day.in? 1..29
      else
        err, days = true, 28 unless end_day.in? 1..28
      end
    end
    errors.add(:end_day, "invalid: up to #{days} is allowed for the selected month") if err
  end
end
