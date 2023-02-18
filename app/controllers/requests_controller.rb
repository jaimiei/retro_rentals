class RequestsController < ApplicationController
  def index
    @requests = current_user.requests
  end

  def new
    @request = Request.new
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if @request.save
      redirect_to request_path(@request), notice: "Booking successful!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def request_params
    params.require(:request).permit(:start_date, :end_date, :video_game_id)
  end
end
