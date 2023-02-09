class RequestsController < ApplicationController
  before_action :set_video_game
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to requests_path(@request)
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def set_video_game
    @video_game = VideoGame.find(params[:video_game_id])
  end

  def request_params
    params.require(:request).permit()
  end
end
