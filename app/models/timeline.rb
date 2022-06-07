class Timeline < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :bookmarks
  has_many :events_timelines
  has_many :events, through: :events_timelines
  has_many :users, through: :bookmarks

  pg_search_scope :timeline_search,
                  against: %i[name description],
                  associated_against: { events: %i[name description] }

  validates :name, presence: true
  validates :description, presence: true

  has_one_attached :photo
end
