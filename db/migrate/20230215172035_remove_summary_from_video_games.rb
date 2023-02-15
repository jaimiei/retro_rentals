class RemoveSummaryFromVideoGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :video_games, :summary, :text
  end
end
