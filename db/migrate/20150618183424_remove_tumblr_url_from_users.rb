class RemoveTumblrUrlFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :tumblr_url, :string
  end
end
