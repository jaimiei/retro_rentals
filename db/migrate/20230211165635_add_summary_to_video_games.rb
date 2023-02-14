class AddSummaryToVideoGames < ActiveRecord::Migration[7.0]
  def change
    add_column :video_games, :summary, :text
  end
end
