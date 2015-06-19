class AddAttachmentFile3ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :file3
    end
  end

  def self.down
    remove_attachment :projects, :file3
  end
end
