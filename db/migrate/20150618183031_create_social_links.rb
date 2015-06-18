class CreateSocialLinks < ActiveRecord::Migration
  def change
    create_table :social_links do |t|
	    t.string   :link_linkedin
	    t.string   :link_instagram
	    t.string   :link_facebook
	    t.string   :link_twitter
	    t.string   :link_tumblr
	    t.string   :link_github
	    t.string   :link_alt_email
      t.timestamps
    end
  end
end
