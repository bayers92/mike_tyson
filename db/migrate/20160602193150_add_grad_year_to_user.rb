class AddGradYearToUser < ActiveRecord::Migration
  def change
    add_column :users, :gradyear, :integer
  end
end
