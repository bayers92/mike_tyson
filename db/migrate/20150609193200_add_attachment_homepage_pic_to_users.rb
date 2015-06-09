class AddAttachmentHomepagePicToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :homepage_pic
    end
  end

  def self.down
    remove_attachment :users, :homepage_pic
  end
end
