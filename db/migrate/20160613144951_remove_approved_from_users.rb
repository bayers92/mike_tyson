class RemoveApprovedFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :approved, :integer
  end
end
