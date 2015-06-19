class CreateWebsiteSettings < ActiveRecord::Migration
  def change
    create_table :website_settings do |t|
    	t.string :domain_name
    	t.integer :color
      t.timestamps
    end
  end
end
