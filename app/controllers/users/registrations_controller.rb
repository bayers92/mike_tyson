class Users::RegistrationsController < Devise::RegistrationsController

  def create
    super #### Keep Devise original logic


    @homepage_info = @user.create_homepage_info()
    @homepage_info.save

    @personal_info = @user.create_personal_info()
    @personal_info.save

    @social_link = @user.create_social_link()
    @social_link.save

    @website_link = @user.create_website_setting()
    @website_link.save

    @domain = @user.create_domain()
    @domain.save

    @analytics = @user.create_analytic()
    @analytics.save
  end



  protected

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :school_id)
  end

  def account_update_params
	 params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :school_id, :gradyear, industry_list: [], career_list: [])
  end

  def after_sign_up_path_for(resource)
    user_dashboard_path(current_user)
  end
end