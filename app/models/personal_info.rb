class PersonalInfo < ActiveRecord::Base
	belongs_to :user

	has_attached_file :resume
	validates_attachment_content_type :resume, :content_type => ["application/pdf"]

	has_attached_file :about_pic, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :about_pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
