class AddHomepageInfoAssociationToUser < ActiveRecord::Migration
  def change
  	add_column :homepage_infos, :user_id, :integer
  	add_index :homepage_infos, :user_id
  end
end
