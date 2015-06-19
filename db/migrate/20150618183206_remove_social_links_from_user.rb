class RemoveSocialLinksFromUser < ActiveRecord::Migration
  def change
		remove_column :users, :link_instagram, :string
		remove_column :users, :link_facebook, :string
		remove_column :users, :link_twitter, :string
		remove_column :users, :link_tumblr, :string
		remove_column :users, :link_github, :string
		remove_column :users, :link_alt_email, :string
		remove_column :users, :link_linkedin, :string
  end
end
