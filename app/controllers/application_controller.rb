class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_theme
  before_action :configure_permitted_paramters, if: :devise_controller?

  def set_theme
    if params[:theme].present?
      theme = params[:theme].to_sym
      # session[:theme] = theme
      cookies[:theme] = theme
      redirect_to(request.referrer || root_path)
    end
  end
  protected

  def configure_permitted_paramters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
  end
end
