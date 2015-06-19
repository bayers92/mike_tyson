class CreatePhotoLinks < ActiveRecord::Migration
  def change
    create_table :photo_links do |t|
      t.string :tumblr_url
      t.references :user, index: true

      t.timestamps
    end
  end
end
