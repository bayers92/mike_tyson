class DropPhotoAlbum < ActiveRecord::Migration
  def change
  	drop_table :photo_album
  end
end
