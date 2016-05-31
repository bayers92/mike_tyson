class Users::RegistrationsController < Devise::RegistrationsController

  def create
    super #### Keep Devise original logic


    if resource.save
      @homepage_info = @user.create_homepage_info()
      @homepage_info.save

      @personal_info = @user.create_personal_info()
      @personal_info.save

      @social_link = @user.create_social_link()
      @social_link.save
    end
  end





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