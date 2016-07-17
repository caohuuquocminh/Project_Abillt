class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #author translation toka
  #begin translate 
  #http://localhost:3000?locale=de
  before_action :set_locale
   def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  # app/controllers/application_controller.rb
  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
#end translate 

   before_action :configure_permitted_parameters, if: :devise_controller?

   protected
  	def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:first_name, :last_name, :username, :birthday, :email, :password, :remember_me)}
		devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
		devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:first_name, :last_name, :username, :birthday,:about, :email, :password,:current_password, :remember_me)}
  	end
end
