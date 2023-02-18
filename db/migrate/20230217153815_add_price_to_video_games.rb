class AddPriceToVideoGames < ActiveRecord::Migration[7.0]
  def change
    add_column :video_games, :price, :decimal, precision: 8, scale: 2
  end
end
