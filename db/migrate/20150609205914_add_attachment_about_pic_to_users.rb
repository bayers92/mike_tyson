class AddAttachmentAboutPicToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :about_pic
    end
  end

  def self.down
    remove_attachment :users, :about_pic
  end
end
