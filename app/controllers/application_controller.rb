class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    if current_user
      render :file => "#{Rails.root}/views/errors/unauthorized.html.erb", :status => 403, :layout => false
    else
      render :file => "#{Rails.root}/views/errors/unauthorized.html.erb", :status => 401, :layout => false
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
