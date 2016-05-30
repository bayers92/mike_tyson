class School < ActiveRecord::Base
	has_many :users
	has_many :projects, through: :users
	has_many :articles, through: :users
	has_many :photos, through: :users

	has_attached_file :logo, styles: { med: "300x300>", small: "100x100>", large: "600x600>"}
	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

	default_scope { order('name ASC') }
end
