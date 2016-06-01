class RegistrationsController < Devise::RegistrationsController
  protected

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :school_id)
  end

  def account_update_params
	 params.require(:user).permit(:email, :password, :password_confirmation, :school_id)
  end

  def account_update_params
   params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :school_id)
  end
end