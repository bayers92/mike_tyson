class AddBackgroundInfoAssociationToUser < ActiveRecord::Migration
  def change
  	add_column :background_infos, :user_id, :integer
  	add_index :background_infos, :user_id
  end
end
