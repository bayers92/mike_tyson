class NewFormHomepageInfo < ActiveRecord::Migration
  def change
  	    add_column :homepage_infos, :concentration, :string, default: ''
  	    add_column :homepage_infos, :interest, :string, default: ''
  end
end
