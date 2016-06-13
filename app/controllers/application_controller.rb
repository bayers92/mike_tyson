class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # check_authorization
  devise_group :person, contains: [:user, :admin, :clerk]

  protected

  def current_ability
    if admin_signed_in?
      @current_ability ||= Ability.new(current_admin)
    elsif clerk_signed_in?
      @current_ability ||= Ability.new(current_clerk)
    else
      @current_ability ||= Ability.new(current_user)
    end
  end

  def after_sign_in_path_for(resource)
    # check for the class of the object to determine what type it is
    if resource.class == User
      edit_user_path(current_user.id)
    elsif resource.class == Admin
      schools_path
    elsif resource.class == Clerk
      clerk_path(current_person.id)
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
