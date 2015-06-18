class AddAltEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :link_alt_email, :string
  end
end
