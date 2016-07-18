class AddDstatusToUser < ActiveRecord::Migration
  def change
    add_column :users, :dstatus, :integer, :default => 0
  end
end
