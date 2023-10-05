class Api::V1::TravelsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  load_and_authorize_resource except: %i[index show]
  def index
    @travels = Travel.all
    render json: @travels, status: :ok
  end

  def show
    @travel = Travel.find(params[:id])
    render json: @travel, status: :ok
  end

  def create
    @travel = Travel.new(travel_params)
    if @travel.save
      render json: @travel, status: :created
    else
      render json: @travel.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @travel = Travel.find(params[:id])
    if @travel.destroy
      render json: { message: "Travel ##{params[:id]} was successfully deleted" }, status: :ok
    else
      render json: { error: 'Failed to delete travel' }, status: :unprocessable_entity
    end
  end

  private

  def travel_params
    params.require(:travel).permit(:name, :image, :price, :trip_duration, :group_size, :rating, :travel_type, :place_id)
  end
end
