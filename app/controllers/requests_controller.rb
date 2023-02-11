class RequestsController < ApplicationController
  before_action :set_video_game
  def new
    @request = Request.new
  end

  def show
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    @request.video_game = @video_game
    if @request.save
      redirect_to video_game_request_path(@video_game, @request), notice: "booking successful!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_video_game
    @video_game = VideoGame.find(params[:video_game_id])
  end

  def request_params
    params.require(:request).permit(:start_date, :end_date, :video_game_id)
  end
end
