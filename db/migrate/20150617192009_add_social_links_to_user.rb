class AddSocialLinksToUser < ActiveRecord::Migration
  def change
    add_column :users, :link_linkedin, :string
    add_column :users, :link_instagram, :string
    add_column :users, :link_facebook, :string
    add_column :users, :link_twitter, :string
    add_column :users, :link_tumblr, :string
    add_column :users, :link_github, :string
  end
end
