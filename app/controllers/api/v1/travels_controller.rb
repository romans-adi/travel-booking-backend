class Api::V1::TravelsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @travels = Travel.all
    render json: @travels
  end

  def show
    @travel = Travel.find(params[:id])
    render json: @travel
  end

  def create
    @travel = Travel.new(travel_params)
    if @travel.save
      render json: @travel, status: :created
    else
      render json: @travel.errors, status: :unprocessable_entity
    end
  end

  private

  def travel_params
    params.require(:travel).permit(:price, :trip_duration, :group_size, :rating, :travel_type, :place_id)
  end
end
