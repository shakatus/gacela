class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected
  def configure_permitted_parameters
    if resource_class == User
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email,
        :password, :password_confirmation, :last_name, :phone) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name,
        :email, :password, :password_confirmation, :last_name, :phone, :current_password) }
    else
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email,
        :password, :password_confirmation, :nit, :city, :departament, :direction,
        :phone, :fax, :web_site, :ciiu, :rep_legal, :date, :duns, :country,
        :nickname) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name,
        :email, :password, :password_confirmation, :nit, :city, :departament,
        :direction, :phone, :fax, :web_site, :ciiu, :rep_legal, :date, :duns,
        :country, :nickname, :current_password) }
    end
  end
end
