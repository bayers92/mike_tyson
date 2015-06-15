class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :articles

	has_attached_file :homepage_pic, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :homepage_pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	
	has_attached_file :about_pic, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :about_pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	
	has_attached_file :resume
	validates_attachment_content_type :resume, :content_type => ["application/pdf"]


	has_attached_file :background_img1, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :background_img1, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_attached_file :background_img2, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :background_img2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_attached_file :background_img3, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :background_img3, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_attached_file :background_img4, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :background_img4, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_attached_file :project1_file1
	has_attached_file :project1_file2
	has_attached_file :project1_file3


	has_attached_file :project2_file1
	has_attached_file :project2_file2
	has_attached_file :project2_file3

	has_attached_file :project3_file1
	has_attached_file :project3_file2
	has_attached_file :project3_file3

	has_attached_file :project4_file1
	has_attached_file :project4_file2
	has_attached_file :project4_file3
end
