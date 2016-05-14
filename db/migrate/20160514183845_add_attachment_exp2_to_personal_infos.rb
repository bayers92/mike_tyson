class AddAttachmentExp2ToPersonalInfos < ActiveRecord::Migration
  def self.up
    change_table :personal_infos do |t|
      t.attachment :exp2
    end
  end

  def self.down
    remove_attachment :personal_infos, :exp2
  end
end
