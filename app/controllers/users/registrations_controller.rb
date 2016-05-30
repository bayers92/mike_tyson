class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(user)
    edit_user_path(current_user)
  end

  def after_sign_in_path_for(user)
    edit_user_path(current_user)
  end

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :school_id)
  end

  def account_update_params
	 params.require(:user).permit(:email, :password, :password_confirmation, :school_id)
  end
end