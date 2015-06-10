class AddAttachmentBackgroundImg4ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :background_img4
    end
  end

  def self.down
    remove_attachment :users, :background_img4
  end
end
