module ApplicationHelper
	def active_class(link_path)
	  current_page?(link_path) ? "active" : ""
	 end

	def valid_user(user)
		# if (user.homepage_info != nil && user.personal_info != nil && user.articles != nil && user.photos != nil && user.social_link != nil)
		if (user.homepage_info != nil && user.personal_info && user.social_link != nil)
			return true
		end
	end

	# Give a website content model - NOT USER - as resource
	def calculate_perc_completed_columns(resource)
		done = 0
		total = 0.0
		resource.attributes.each_pair do |k, v|
			total += 1
		    if v != nil
		    	done += 1
		    end
		end
		return (done/total)
	end

	# Give a website content model - NOT USER - as resource
	def calculate_columns_completed(resource)
		done = 0.0
		resource.attributes.each_pair do |k, v|
		    if v != nil
		    	done += 1
		    end
		end
		return done
	end

	# Give a website content model - NOT USER - as resource
	def calculate_total_columns(resource)
		total = 0.0
		resource.attributes.each_pair do |k, v|
	    	total += 1
	    end
		return total
	end

	# Give homepage info as resource
	def calc_done_homepage(resource)
		done = 0
		if resource.homepage_header != ""
			done += 1
		end
		if resource.homepage_display_name != ""
			done += 1
		end
		if resource.homepage_pic_updated_at != nil
			done += 1
		end
		return done
	end

	# Give personal info as resource
	def calc_done_personal(resource)
		done = 0
		if resource.about_pic_updated_at != nil
			done += 1
		end
		if resource.intro_paragraph != ""
			done += 1
		end
		if resource.resume_file_size != nil
			done += 1
		end
		if resource.exp1_file_size != nil
			done += 1
		end
		if resource.exp2_file_size != nil
			done += 1
		end
		return done
	end

	# Give social_link as resource
	def calc_done_social(resource)
		done = 0
		if resource.link_linkedin != nil
			done += 1
		end
		if resource.link_instagram != nil
			done += 1
		end
		if resource.link_facebook != nil
			done += 1
		end
		if resource.link_twitter != nil
			done += 1
		end
		if resource.link_tumblr != nil
			done += 1
		end
		if resource.link_github != nil
			done += 1
		end
		return done
	end

	# Give user as resource
	def calc_content_done(resource)
		done = 0
		total = 0.0
		
		done += calc_done_homepage(resource.homepage_info)
		total += 3
		
		done += calc_done_personal(resource.personal_info)
		total += 5
		
		done += resource.projects.count
		total += 1

		done += resource.articles.count
		total += 3

		done += resource.photos.count
		total += 3

		done += calc_done_social(resource.social_link)
		total += 1

		if resource.website_setting.color?
			done += 1
		end
		total += 1

		result = ((done/total)*100).round
		if result > 100
			result = 100
		end

		return result
	end



	# Give user as resource
	def calc_profile_done(resource)
		done = 0 
		total = 13.0

		if resource.gradyear != nil
			done +=1
		end

		if resource.sex_list.count != 0
			done +=1
		end

		if resource.state_list != 0
			done +=1
		end

		if resource.language_list != 0
			done +=1
		end

		if resource.demographic_list != 0
			done +=1
		end

		if resource.uconcentration != 0
			done +=1
		end

		if resource.industry_list != 0
			done +=1
		end

		if resource.mconcentration_list != 0
			done +=1
		end

		if resource.region_list != 0
			done +=1
		end

		if resource.city_list != 0
			done +=1
		end

		if resource.size_list != 0
			done +=1
		end

		if resource.travel_list != 0
			done +=1
		end

		if resource.balance_list != 0
			done +=1
		end

		result = ((done/total)*100).round
		if result > 100
			result = 100
		end

		return result
	end


	# Give user as resource
	def calc_bonus_done(resource)
		total = 2.0
		done = 0
		if resource.domain.url != nil
			done += 1
		end
		if resource.analytic.url != nil
			done += 1
		end

		result = ((done/total)*100).round
		if result > 100
			result = 100
		end

		return result
	end
				
			
				
			
				

	# Return appropriate html for approval status
	# Give approval integer
	def check_approval_status(approval)
		if approval == 0
			return '<p class="unapproved"> In progress </p>'
		elsif approval == 1

		elsif approval == 2

		elsif approval == 3

		else
		end
	end

end
