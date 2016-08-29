class Users::AfterSignupController < ApplicationController
	include Wicked::Wizard

	before_filter :authenticate_user!

	steps :add_info

	def show
		@user = current_user

		render_wizard
	end

	def update
		@user = current_user
		@user.update(user_params)
		render_wizard @user
	end

    def user_params
      params.require(:user).permit(:school_id, :gradyear, :approval, :approval_process, :dstatus, :dstatus_process, industry_list: [], career_list: [], language_list: [], wexperience_list: [], undergrad_list: [], uconcentration_list: [], travel_list: [], state_list: [], skill_list: [], size_list: [], sex_list: [], region_list: [], mconcentration_list: [], demographic_list: [], balance_list: [], visa_list: [], city_list: [])
    end
end
