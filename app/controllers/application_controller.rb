class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:familyname])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:familynamekana])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstnamekana])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:researcherornot])
  end
  
#ログアウト後はトップページへ  
  def after_sign_out_path_for resource
    root_path
  end 
  
#新規登録後研究者は研究情報入力ページへその他はトップページへ
#ログイン後は全員トップページへ
  def after_sign_in_path_for(resource) 
    if User.find_by(id: current_user.id).researcherornot == 1 && Researcher.find_by(user_id: current_user.id) == nil
      '/researchers/new'            #  new_user_registration_path


#########Cheerするからログインしたらcheer#newに飛ぶようにif文
      
    else
      root_path
    end
    
  
  end
end
