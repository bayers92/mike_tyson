class RemoveDomainFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :domain_name, :string
  end
end
