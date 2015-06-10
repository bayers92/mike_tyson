class RemoveBackgroundlink4FromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :backgroundlink4, :string
  end
end
