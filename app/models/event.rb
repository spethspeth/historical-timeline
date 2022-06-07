class Event < ApplicationRecord

  belongs_to :user
  has_many :events_timelines
  has_many :timelines, through: :events_timelines


  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true

  has_one_attached :photo
end
