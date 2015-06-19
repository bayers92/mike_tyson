class AddSocialLinksAssociationToUser < ActiveRecord::Migration
  def change
  	  	  	add_column :social_links, :user_id, :integer
	  	add_index :social_links, :user_id
  end
end
