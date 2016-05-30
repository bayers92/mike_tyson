class Admins::RegistrationsController < Devise::RegistrationsController

  protected

  def sign_up(resource_name, resoure)
    # just overwrite the default one
    # to prevent auto sign in as the new sign up
  end

	def after_sign_up_path_for(resource)
		schools_path
	end

	def after_sign_in_path_for(resource)
		schools_path
	end
end