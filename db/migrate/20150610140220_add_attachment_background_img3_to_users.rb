class AddAttachmentBackgroundImg3ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :background_img3
    end
  end

  def self.down
    remove_attachment :users, :background_img3
  end
end
