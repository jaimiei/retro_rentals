class AddYearToVideoGames < ActiveRecord::Migration[7.0]
  def change
    add_column :video_games, :year, :integer
  end
end
