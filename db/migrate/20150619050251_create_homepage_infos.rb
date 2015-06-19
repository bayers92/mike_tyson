class CreateHomepageInfos < ActiveRecord::Migration
  def change
    create_table :homepage_infos do |t|
      t.string :homepage_header
      t.string :homepage_display_name
      t.references :user, index: true

      t.timestamps
    end
  end
end
