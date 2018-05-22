class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	#before_action :configure_permitted_parameters, if: :devise_controller?

	def current_ability
  		@current_ability ||= Ability.new(current_usuario)
	end

	protected

		def configure_permitted_parameters
	            devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :tipo_documento, :numero_documento, :nombre, :telefono, :celular, :direccion, :ciudad, :departamento, :pais, :profesion])
	            devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :tipo_documento, :numero_documento, :nombre, :telefono, :celular, :direccion, :ciudad, :departamento, :pais, :profesion])
	    end
end
