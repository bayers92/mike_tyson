class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # check_authorization
  devise_group :person, contains: [:user, :admin, :clerk, :reviewer]

  protected

  def current_ability
    if admin_signed_in?
      @current_ability ||= Ability.new(current_admin)
    elsif clerk_signed_in?
      @current_ability ||= Ability.new(current_clerk)
    elsif reviewer_signed_in?
      @current_ability ||= Ability.new(current_reviewer)
    elsif user_signed_in?
      @current_ability ||= Ability.new(current_user)
    else
    end
  end

  def after_sign_in_path_for(resource)
    # check for the class of the object to determine what type it is
    if resource.class == User
      user_dashboard_path(current_user)
    elsif resource.class == Admin
      schools_path
    elsif resource.class == Clerk
      clerk_path(current_person.id)
    elsif resource.class == Reviewer
      reviewer_path(current_person.id)
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
