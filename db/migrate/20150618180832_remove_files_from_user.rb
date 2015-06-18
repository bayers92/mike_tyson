class RemoveFilesFromUser < ActiveRecord::Migration
  def change
  	    remove_column :users, :about_pic_file_name, :string
  	    remove_column :users, :about_pic_content_type, :string
  	    remove_column :users, :about_pic_file_size, :integer
  	    remove_column :users, :about_pic_updated_at, :datetime

  	    remove_column :users, :resume_file_name, :string
  	    remove_column :users, :resume_content_type, :string
  	    remove_column :users, :resume_file_size, :integer
  	    remove_column :users, :resume_updated_at, :datetime
  end
end
