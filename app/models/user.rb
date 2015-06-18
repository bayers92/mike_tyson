class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :articles
	has_one :background_info
	has_one :homepage_info
	has_one :personal_info
	has_one :photo
	has_one :showcase
	has_one :social_link
	has_one :website_setting
end
