class VideoGame < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :requests
  validates :title, presence: true
  validates :console, presence: true
  validates :genre, presence: true
  validates :year, presence: true
  validates :price, presence: true
  has_one_attached :photo
  validates :photo, presence: true
end
