class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # check_authorization
  devise_group :person, contains: [:user, :admin]

  def after_sign_in_path_for(user)
    # check for the class of the object to determine what type it is
    edit_user_path(user.id)
  end

  def after_sign_in_path_for(admin)
    # check for the class of the object to determine what type it is
    schools_path
  end

  def after_sign_in_path_for(resource)
    if resource.class == Admin
      schools_path
    elsif resource.class == User
      edit_user_path(current_user)
    end
  end

  def after_sign_up_path_for(resource)
    if resource.class == Admin
      schools_path
    elsif resource.class == User
      edit_user_path(current_user)
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
   redirect_to root_url, :alert => exception.message
 end
end
