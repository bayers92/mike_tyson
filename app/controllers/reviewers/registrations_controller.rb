class Reviewers::RegistrationsController < Devise::RegistrationsController
  # disable default no_authentication action
  skip_before_action :require_no_authentication, only: [:new, :create, :cancel]

  # now we need admin to register new reviwer
  prepend_before_action :authenticate_scope!, only: [:new, :create, :cancel]

  protected

  def sign_up(resource_name, resource)
    # just overwrite the default one
    # to prevent auto sign in as the new sign up
  end

  def after_sign_up_path_for(resource)
    # 
  end
end