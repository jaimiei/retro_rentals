class VideoGame < ApplicationRecord
  validates :title, presence: true
  validates :console, presence: true
  validates :genre, presence: true
  has_one_attached :photo
  validates :photo, presence: true
end
