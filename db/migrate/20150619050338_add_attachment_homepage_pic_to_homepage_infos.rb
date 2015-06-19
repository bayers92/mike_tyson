class AddAttachmentHomepagePicToHomepageInfos < ActiveRecord::Migration
  def self.up
    change_table :homepage_infos do |t|
      t.attachment :homepage_pic
    end
  end

  def self.down
    remove_attachment :homepage_infos, :homepage_pic
  end
end
