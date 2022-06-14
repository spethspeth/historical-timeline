class Timeline < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :bookmarks
  has_many :events_timelines, dependent: :destroy
  has_many :events, through: :events_timelines
  has_many :users, through: :bookmarks
  has_one_attached :photo
  has_many :reviews, dependent: :destroy

  pg_search_scope :timeline_search,
                  against: {
                    name: 'A',
                    description: 'B'
                  },
                  associated_against: {
                    events: {
                      name: 'A',
                      description: 'B'
                    }
                  },
                  using: { tsearch: { prefix: true } }

  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
