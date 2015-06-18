class BackgroundInfo < ActiveRecord::Base
	belongs_to :user
	has_many :experiences
end
