class AddAttachmentExp4ToPersonalInfos < ActiveRecord::Migration
  def self.up
    change_table :personal_infos do |t|
      t.attachment :exp4
    end
  end

  def self.down
    remove_attachment :personal_infos, :exp4
  end
end
