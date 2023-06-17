class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age])
  end
  
  private

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource_or_scope)
    user_path(current_user.id)  #ここを好きなパスに変更
  end

  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource_or_scope)
    root_path #ここを好きなパスに変更
  end
  
end
