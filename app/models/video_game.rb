class VideoGame < ApplicationRecord
  validates :title, presence: true
  validates :console, presence: true
  validates :genre, presence: true
end
