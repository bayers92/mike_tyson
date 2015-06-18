class ChangeHomepageHeaderType < ActiveRecord::Migration
  def change
  	change_column :homepage_infos, :homepage_header, :string
  end
end
