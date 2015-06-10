class AddBackgroundlink4ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :backgroundlink4, :string
  end
end
