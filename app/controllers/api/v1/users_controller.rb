class Api::V1::UsersController < ApplicationController
  before_action :set_api_v1_user, only: %i[show update destroy]

  # GET /api/v1/users
  def index
    @api_v1_user = User.all
    if @api_v1_user.present?
      render json: { success: true, users: @api_v1_user }
    else
      render json: { success: false, message: 'No Users Found' }, status: :not_found
    end
  rescue ActiveRecord::RecordNotFound => e
    render json: { success: false, message: e.message }, status: :not_found
  rescue StandardError => e
    render json: { success: false, message: e.message }, status: :internal_server_error
  end

  # GET /api/v1/users/1
  def show
    render json: @api_v1_user
  end

  # POST /api/v1/users
  def create
    @api_v1_user = User.new(api_v1_user_params)

    if @api_v1_user.save
      render json: { success: true, user: @api_v1_user }
    else
      render json: @api_v1_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/users/1
  def update
    if @api_v1_user.update(api_v1_user_params)
      render json: @api_v1_user
    else
      render json: @api_v1_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/users/1
  def destroy
    if @api_v1_user.destroy
      render json: { success: true, message: 'User successfully deleted' }
    else
      render json: { success: false, message: 'Failed to delete user' }, status: :unprocessable_entity
    end
  rescue ActiveRecord::RecordNotFound => e
    render json: { success: false, message: e.message }, status: :not_found
  rescue StandardError => e
    render json: { success: false, message: e.message }, status: :internal_server_error
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_api_v1_user
    @api_v1_user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def api_v1_user_params
    params.require(:user).permit(:name, :email, :password, :role)
  end
end
