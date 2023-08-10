class ApplicationController < ActionController::Base
  #ログインしていない状態でアクセス
  before_action :authenticate_user!, except: [:top, :about]

  before_action :configure_permitted_parameters, if: :devise_controller?

  #サインイン後の遷移先
  def after_sign_in_path_for(resource)
    books_path
  end

  #サインアウト後の遷移先
  def after_sign_out_path_for(resource)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
  end
end
