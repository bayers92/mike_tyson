class RenamePhotosToPhoto < ActiveRecord::Migration
  def change
  	rename_table :photos, :photo_album
  end
end
