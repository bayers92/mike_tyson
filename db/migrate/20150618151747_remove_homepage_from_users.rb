class RemoveHomepageFromUsers < ActiveRecord::Migration
  def change
  	    remove_column :users, :homepage_header, :text
  	    remove_column :users, :intro_paragraph, :text
  end
end
