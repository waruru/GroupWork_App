class ApplicationController < ActionController::Base

  private
  def after_sign_in_path_for(resource)
    users_path
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:display_name])
  end
end
