class AddVerticalToPersonalInfos < ActiveRecord::Migration
  def change
    add_column :personal_infos, :vertical, :boolean, :default => false
  end
end
