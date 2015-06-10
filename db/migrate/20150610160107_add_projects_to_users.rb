class AddProjectsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :project1_title, :string
    add_column :users, :project1_paragraph, :text
    add_column :users, :project2_title, :string
    add_column :users, :project2_paragraph, :text
    add_column :users, :project3_title, :string
    add_column :users, :project3_paragraph, :text
    add_column :users, :project4_title, :string
    add_column :users, :project4_paragraph, :text
  end
end
