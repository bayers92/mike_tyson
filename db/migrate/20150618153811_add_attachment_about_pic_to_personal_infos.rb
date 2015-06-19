class AddAttachmentAboutPicToPersonalInfos < ActiveRecord::Migration
  def self.up
    change_table :personal_infos do |t|
      t.attachment :about_pic
    end
  end

  def self.down
    remove_attachment :personal_infos, :about_pic
  end
end
