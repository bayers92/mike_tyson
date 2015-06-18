class AddShowcasesAssociationToUser < ActiveRecord::Migration
  def change
  	  	add_column :showcases, :user_id, :integer
  	add_index :showcases, :user_id
  end
end
