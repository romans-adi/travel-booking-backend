class Api::V1::TravelsController < ApplicationController
  def index
    @travels = Travel.all
    render json: @travels
  end
end
