class AddWebsiteSettingsAssociationToUser < ActiveRecord::Migration
  def change
  	  	  	add_column :website_settings, :user_id, :integer
	  	add_index :website_settings, :user_id
  end
end
