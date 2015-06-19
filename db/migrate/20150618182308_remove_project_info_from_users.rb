class RemoveProjectInfoFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :showcase_type, :integer

  	remove_column :users, :project1_title, :string
  	remove_column :users, :project1_paragraph, :text

  	remove_column :users, :project1_file1_title, :string
  	remove_column :users, :project1_file1_type, :integer
  	remove_column :users, :project1_file1_file_name, :string
  	remove_column :users, :project1_file1_content_type, :string
  	remove_column :users, :project1_file1_file_size, :integer
  	remove_column :users, :project1_file1_updated_at, :datetime

	remove_column :users, :project1_file2_title, :string
  	remove_column :users, :project1_file2_type, :integer
  	remove_column :users, :project1_file2_file_name, :string
  	remove_column :users, :project1_file2_content_type, :string
  	remove_column :users, :project1_file2_file_size, :integer
  	remove_column :users, :project1_file2_updated_at, :datetime

	remove_column :users, :project1_file3_title, :string
  	remove_column :users, :project1_file3_type, :integer
  	remove_column :users, :project1_file3_file_name, :string
  	remove_column :users, :project1_file3_content_type, :string
  	remove_column :users, :project1_file3_file_size, :integer
  	remove_column :users, :project1_file3_updated_at, :datetime


  	remove_column :users, :project2_title, :string
  	remove_column :users, :project2_paragraph, :text

  	remove_column :users, :project2_file1_title, :string
  	remove_column :users, :project2_file1_type, :integer
  	remove_column :users, :project2_file1_file_name, :string
  	remove_column :users, :project2_file1_content_type, :string
  	remove_column :users, :project2_file1_file_size, :integer
  	remove_column :users, :project2_file1_updated_at, :datetime

	remove_column :users, :project2_file2_title, :string
  	remove_column :users, :project2_file2_type, :integer
  	remove_column :users, :project2_file2_file_name, :string
  	remove_column :users, :project2_file2_content_type, :string
  	remove_column :users, :project2_file2_file_size, :integer
  	remove_column :users, :project2_file2_updated_at, :datetime

	remove_column :users, :project2_file3_title, :string
  	remove_column :users, :project2_file3_type, :integer
  	remove_column :users, :project2_file3_file_name, :string
  	remove_column :users, :project2_file3_content_type, :string
  	remove_column :users, :project2_file3_file_size, :integer
  	remove_column :users, :project2_file3_updated_at, :datetime


  	remove_column :users, :project3_title, :string
  	remove_column :users, :project3_paragraph, :text

  	remove_column :users, :project3_file1_title, :string
  	remove_column :users, :project3_file1_type, :integer
  	remove_column :users, :project3_file1_file_name, :string
  	remove_column :users, :project3_file1_content_type, :string
  	remove_column :users, :project3_file1_file_size, :integer
  	remove_column :users, :project3_file1_updated_at, :datetime

	remove_column :users, :project3_file2_title, :string
  	remove_column :users, :project3_file2_type, :integer
  	remove_column :users, :project3_file2_file_name, :string
  	remove_column :users, :project3_file2_content_type, :string
  	remove_column :users, :project3_file2_file_size, :integer
  	remove_column :users, :project3_file2_updated_at, :datetime

	remove_column :users, :project3_file3_title, :string
  	remove_column :users, :project3_file3_type, :integer
  	remove_column :users, :project3_file3_file_name, :string
  	remove_column :users, :project3_file3_content_type, :string
  	remove_column :users, :project3_file3_file_size, :integer
  	remove_column :users, :project3_file3_updated_at, :datetime


  	remove_column :users, :project4_title, :string
  	remove_column :users, :project4_paragraph, :text

  	remove_column :users, :project4_file1_title, :string
  	remove_column :users, :project4_file1_type, :integer
  	remove_column :users, :project4_file1_file_name, :string
  	remove_column :users, :project4_file1_content_type, :string
  	remove_column :users, :project4_file1_file_size, :integer
  	remove_column :users, :project4_file1_updated_at, :datetime

	remove_column :users, :project4_file2_title, :string
  	remove_column :users, :project4_file2_type, :integer
  	remove_column :users, :project4_file2_file_name, :string
  	remove_column :users, :project4_file2_content_type, :string
  	remove_column :users, :project4_file2_file_size, :integer
  	remove_column :users, :project4_file2_updated_at, :datetime

	remove_column :users, :project4_file3_title, :string
  	remove_column :users, :project4_file3_type, :integer
  	remove_column :users, :project4_file3_file_name, :string
  	remove_column :users, :project4_file3_content_type, :string
  	remove_column :users, :project4_file3_file_size, :integer
  	remove_column :users, :project4_file3_updated_at, :datetime

  end
end
