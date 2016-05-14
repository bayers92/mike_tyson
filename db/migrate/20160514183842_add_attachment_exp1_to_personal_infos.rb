class AddAttachmentExp1ToPersonalInfos < ActiveRecord::Migration
  def self.up
    change_table :personal_infos do |t|
      t.attachment :exp1
    end
  end

  def self.down
    remove_attachment :personal_infos, :exp1
  end
end
