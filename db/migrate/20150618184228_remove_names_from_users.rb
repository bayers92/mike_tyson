class RemoveNamesFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :name_first, :string
  	remove_column :users, :name_last, :string
  end
end
