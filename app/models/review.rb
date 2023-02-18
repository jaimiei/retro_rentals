class Review < ApplicationRecord
  belongs_to :video_game
  validates :content, presence: true
  validates :rating, presence: true
end
