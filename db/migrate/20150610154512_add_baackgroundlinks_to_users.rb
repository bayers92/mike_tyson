class AddBaackgroundlinksToUsers < ActiveRecord::Migration
  def change
    add_column :users, :background_link1, :string
    add_column :users, :background_link2, :string
    add_column :users, :background_link3, :string
    add_column :users, :background_link4, :string
  end
end
