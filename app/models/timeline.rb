class Timeline < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :events_timelines
  has_many :events, through: :events_timelines
  has_many :users, through: :bookmarks

  validates :name, presence: true
  validates :description, presence: true
end
