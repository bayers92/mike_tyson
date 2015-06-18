class AddAttachmentImgToExperiences < ActiveRecord::Migration
  def self.up
    change_table :experiences do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :experiences, :img
  end
end
