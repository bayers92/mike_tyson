class AddEmailToDemos < ActiveRecord::Migration
  def change
    add_column :demos, :email, :string
  end
end
