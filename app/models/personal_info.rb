class PersonalInfo < ActiveRecord::Base
	belongs_to :user

	has_attached_file :resume
	validates_attachment_content_type :resume, :content_type => ["application/pdf"]

	has_attached_file :about_pic, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :about_pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_attached_file :exp1, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :exp1, content_type: /\Aimage\/.*\Z/

	has_attached_file :exp2, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :exp2, content_type: /\Aimage\/.*\Z/

	has_attached_file :exp3, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :exp3, content_type: /\Aimage\/.*\Z/

	has_attached_file :exp4, styles: {  small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :exp4, content_type: /\Aimage\/.*\Z/

end
