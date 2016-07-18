class AddDstatusToWebsiteSetting < ActiveRecord::Migration
  def change
    add_column :website_settings, :dstatus, :integer, :default => 0
  end
end
