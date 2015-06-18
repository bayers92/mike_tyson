class Project < ActiveRecord::Base
	belongs_to :showcase

	has_attached_file :file1
	has_attached_file :file2
	has_attached_file :file3
	has_attached_file :file4
end
