class AddAttachmentResumeToPersonalInfos < ActiveRecord::Migration
  def self.up
    change_table :personal_infos do |t|
      t.attachment :resume
    end
  end

  def self.down
    remove_attachment :personal_infos, :resume
  end
end
