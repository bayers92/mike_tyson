class AddClerkToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :clerk, index: true
  end
end
