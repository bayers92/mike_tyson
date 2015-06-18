class AddProjectsAssociationToShowcase < ActiveRecord::Migration
  def change
  	  	add_column :projects, :showcase_id, :integer
	  	add_index :projects, :showcase_id
  end
end
