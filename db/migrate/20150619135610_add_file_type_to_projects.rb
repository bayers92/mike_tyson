class AddFileTypeToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :file1_type, :integer
  	add_column :projects, :file2_type, :integer
  	add_column :projects, :file3_type, :integer
  	add_column :projects, :file4_type, :integer

  	add_column :projects, :file1_title, :string
  	add_column :projects, :file2_title, :string
  	add_column :projects, :file3_title, :string
  	add_column :projects, :file4_title, :string
  end
end
