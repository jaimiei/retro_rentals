class Review < ApplicationRecord
  belongs_to :video_game
  validates :content, presence: true
en
