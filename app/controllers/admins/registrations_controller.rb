class Admins::RegistrationsController < Devise::RegistrationsController
  # disable default no_authentication action
  skip_before_action :require_no_authentication, only: [:new, :create, :cancel]
  # now we need admin to register new admin
  prepend_before_action :authenticate_scope!, only: [:new, :create, :cancel]

  protected

  def sign_up(resource_name, resoure)
    # just overwrite the default one
    # to prevent auto sign in as the new sign up
  end

	def after_sign_up_path_for(admin)
		schools_path
	end

	def after_sign_in_path_for(admin)
		schools_path
	end
end