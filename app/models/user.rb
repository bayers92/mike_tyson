class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :articles,  autosave: true
	has_one :background_info,  autosave: true
	has_many :experiences, through: :background_info
	has_one :homepage_info,  autosave: true
	has_one :personal_info,  autosave: true
	has_one :photo_link,  autosave: true
	has_many :projects, autosave: true
	has_one :social_link,  autosave: true
	has_one :website_setting,  autosave: true

	has_many :photos, autosave: true

	belongs_to :school

	include ActiveModel::Validations
	validates_with GoodnessValidator


	acts_as_taggable_on :industry, :career
	scope :by_join_date, order("created_at DESC")
	
end

