class Api::V1::ReservationController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservations = current_user.reservations
    render json: @reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    head :no_content
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date_of_reservation, :city, :user_id, :travel_id)
  end
end
