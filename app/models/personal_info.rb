class PersonalInfo < ActiveRecord::Base
	belongs_to :user

	has_attached_file :resume
	validates_attachment_content_type :resume, :content_type => ["application/pdf"]

	has_attached_file :about_pic, styles: { small: "64x64", med: "300x300", large: "500x500" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :about_pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	crop_attached_file :about_pic

	has_attached_file :exp1, styles: { small: "64x64", med: "300x300", large: "500x500" }
	validates_attachment_content_type :exp1, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_attached_file :exp2, styles: { small: "64x64", med: "300x300", large: "500x500" }
	validates_attachment_content_type :exp2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_attached_file :exp3, styles: { small: "64x64", med: "300x300", large: "500x500" }
	validates_attachment_content_type :exp3, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_attached_file :exp4, styles: { small: "64x64", med: "300x300", large: "500x500" }
	validates_attachment_content_type :exp4, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
