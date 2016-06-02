class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # check_authorization
  devise_group :person, contains: [:user, :admin]

  def after_sign_in_path_for(resource)
    # check for the class of the object to determine what type it is
    if resource.class == User
      edit_user_path(current_user.id)
    elsif resource.class == Admin
      schools_path
    else
      super
    end
  end

  def after_sign_up_path_for(resource)
    if resource.class == Admin
      schools_path
    elsif resource.class == User
      edit_homepage_info_path(current_user.homepage_info)
    else
      super
    end
  end

  def account_update_params(resource)
    if resource.class == User
     params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :school_id)
     else
      super
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
   redirect_to root_url, :alert => exception.message
 end

end
