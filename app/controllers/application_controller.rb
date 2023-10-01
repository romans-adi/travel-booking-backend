class ApplicationController < ActionController::API
  rescue_from CanCan::AccessDenied do |exception|
    exception.default_message = "You are not authorized to perform this task"
    render json: { error: exception.message }, status: :forbidden
  end
end