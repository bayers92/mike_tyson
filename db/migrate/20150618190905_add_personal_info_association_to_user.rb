class AddPersonalInfoAssociationToUser < ActiveRecord::Migration
  def change
  	add_column :personal_infos, :user_id, :integer
  	add_index :personal_infos, :user_id
  end
end
