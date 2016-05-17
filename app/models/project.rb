class Project < ActiveRecord::Base
	belongs_to :user

	has_attached_file :file1
	has_attached_file :file2
	has_attached_file :file3
	has_attached_file :file4

	do_not_validate_attachment_file_type :file1
	do_not_validate_attachment_file_type :file2
	do_not_validate_attachment_file_type :file3
	do_not_validate_attachment_file_type :file4
end
