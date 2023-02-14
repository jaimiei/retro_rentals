class VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
  end

  def show
    @video_game = VideoGame.find(params[:id])
  end

  private

  def video_game_params
    params.require(:video_game).permit(:title, :console, :genre, :summary, :photo)
  end

end
