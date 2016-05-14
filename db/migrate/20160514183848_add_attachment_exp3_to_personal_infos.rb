class AddAttachmentExp3ToPersonalInfos < ActiveRecord::Migration
  def self.up
    change_table :personal_infos do |t|
      t.attachment :exp3
    end
  end

  def self.down
    remove_attachment :personal_infos, :exp3
  end
end
