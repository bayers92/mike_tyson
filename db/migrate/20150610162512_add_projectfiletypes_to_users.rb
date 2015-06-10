class AddProjectfiletypesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :project1_file1_title, :string
    add_column :users, :project1_file1_type, :integer
    add_column :users, :project1_file2_title, :string
    add_column :users, :project1_file2_type, :integer
    add_column :users, :project1_file3_title, :string
    add_column :users, :project1_file3_type, :integer
    add_column :users, :project2_file1_title, :string
    add_column :users, :project2_file1_type, :integer
    add_column :users, :project2_file2_title, :string
    add_column :users, :project2_file2_type, :integer
    add_column :users, :project2_file3_title, :string
    add_column :users, :project2_file3_type, :integer
    add_column :users, :project3_file1_title, :string
    add_column :users, :project3_file1_type, :integer
    add_column :users, :project3_file2_title, :string
    add_column :users, :project3_file2_type, :integer
    add_column :users, :project3_file3_title, :string
    add_column :users, :project3_file3_type, :integer
    add_column :users, :project4_file1_title, :string
    add_column :users, :project4_file1_type, :integer
    add_column :users, :project4_file2_title, :string
    add_column :users, :project4_file2_type, :integer
    add_column :users, :project4_file3_title, :string
    add_column :users, :project4_file3_type, :integer
  end
end
