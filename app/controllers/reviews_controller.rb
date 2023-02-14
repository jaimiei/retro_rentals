class ReviewsController < ApplicationController
  before_action :set_video_game, only: [:new, :create]
  def new
    @video_game = VideoGame.find(params[:video_game_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.video_game = @video_game
    if @review.save
      redirect_to video_game_path(@video_game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to video_game_path(@review.video_game), status: :see_other
  end
  private

  def set_video_game
    @video_game = VideoGame.find(params[:video_game_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
