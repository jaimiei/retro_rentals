class Request < ApplicationRecord
  belongs_to :user_id
  belongs_to :video_game_id
end
