class AddDeleteToPeronsalInfos < ActiveRecord::Migration
  def change
    add_column :personal_infos, :remove_exp1, :boolean, :default => false
    add_column :personal_infos, :remove_exp2, :boolean, :default => false
    add_column :personal_infos, :remove_exp3, :boolean, :default => false
    add_column :personal_infos, :remove_exp4, :boolean, :default => false
  end
end
