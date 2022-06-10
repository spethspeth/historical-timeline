class Bookmark < ApplicationRecord
  attr_accessor :bookmarks

  belongs_to :user
  belongs_to :timeline
end
