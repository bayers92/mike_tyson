class AddApprovalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :approval, :integer, :default => 0
  end
end
