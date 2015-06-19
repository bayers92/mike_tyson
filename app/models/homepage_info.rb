class HomepageInfo < ActiveRecord::Base
  belongs_to :user


	has_attached_file :homepage_pic, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :homepage_pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

