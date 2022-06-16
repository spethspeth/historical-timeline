class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :timelines
  has_many :events
  has_many :bookmarks
  has_many :timelines, through: :bookmarks
  has_many :reviews

  validates :email, uniqueness: true
  validates :username, presence: true, uniqueness: true
end
