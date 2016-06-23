class Clerks::RegistrationsController < Devise::RegistrationsController
  # disable default no_authentication action
  skip_before_action :require_no_authentication, only: [:new, :create, :cancel]

  # now we need admin to register new clerk
  prepend_before_action :authenticate_scope!, only: [:new, :create, :cancel]
  
  before_action :authenticate_person!

  protected

  def sign_up(resource_name, resource)
    # just overwrite the default one
    # to prevent auto sign in as the new sign up
  end

  def after_sign_up_path_for(resource)
    # clerk_path(current_clerk.id)
  end


  def sign_up_params
    params.require(:clerk).permit(:email, :password, :password_confirmation, :school_id)
  end

  def account_update_params
   params.require(:clerk).permit(:email, :password, :password_confirmation, :current_password, :school_id)
  end
end