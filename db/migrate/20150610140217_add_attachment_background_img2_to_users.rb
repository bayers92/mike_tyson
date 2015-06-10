class AddAttachmentBackgroundImg2ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :background_img2
    end
  end

  def self.down
    remove_attachment :users, :background_img2
  end
end
