class VideoGame < ApplicationRecord
  has_many :requests
  validates :title, presence: true
  validates :console, presence: true
  validates :genre, presence: true
end
