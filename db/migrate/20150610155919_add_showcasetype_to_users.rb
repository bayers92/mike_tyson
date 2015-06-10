class AddShowcasetypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :showcase_type, :integer
  end
end
