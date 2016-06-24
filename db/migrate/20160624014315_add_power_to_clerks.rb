class AddPowerToClerks < ActiveRecord::Migration
  def change
    add_column :clerks, :power, :boolean, default: false
  end
end
