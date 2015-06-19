class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :articles
	has_many :background_info
	has_many :homepage_info
	has_one :personal_info
	has_many :photo
	has_many :showcase
	has_many :social_link
	has_many :website_setting
end
