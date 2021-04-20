# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_in_path_for(_resource)
    if current_user.admin
      admin_root_path
    else
      root_path
    end
  end

  private 

  def user_not_authorized
    flash[:alert] = "User not authorized"
    redirect_to(request.referer || root_path)
  end

end
