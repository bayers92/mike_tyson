class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :articles,  autosave: true
	has_one :background_info,  autosave: true
	has_many :homepage_info,  autosave: true
	has_one :personal_info,  autosave: true
	has_many :photo,  autosave: true
	has_many :showcase,  autosave: true
	has_many :social_link,  autosave: true
	has_many :website_setting,  autosave: true
end
