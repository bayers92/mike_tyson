class AddBackgroundInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :background_type, :integer
  end
end
