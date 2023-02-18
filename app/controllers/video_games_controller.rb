class VideoGamesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR console ILIKE :query OR genre ILIKE :query OR publisher ILIKE :query"
      @video_games = VideoGame.where(sql_query, query: "%#{params[:query]}%")
    else
      @video_games = VideoGame.all
    end
  end

  def show
    @video_game = VideoGame.find(params[:id])
  end

  private

  def video_game_params
    params.require(:video_game).permit(:title, :console, :genre, :year, :price, :publisher, :summary, :photo)
  end

end
