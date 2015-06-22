module ApplicationHelper
	def active_class(link_path)
	  current_page?(link_path) ? "active" : ""
	 end


	def valid_user(user)
		if (user.homepage_info != nil && user.personal_info != nil && user.background_info != nil && user.showcase != nil && user.articles != nil && user.photo_link != nil && user.social_link != nil)
			return true
		end
	end
end
