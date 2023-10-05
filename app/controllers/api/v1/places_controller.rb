class Api::V1::PlacesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  load_and_authorize_resource except: %i[index show]

  def index
    @places = Place.all
    render json: @places, status: :ok
  end

  def show
    @place = Place.includes(:travel).find(params[:id])
    render json: @place, status: :ok
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      render json: @place, status: :created
    else
      render json: @place.errors, status: :unprocessable_entity
    end
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :main_picture)
  end
end
