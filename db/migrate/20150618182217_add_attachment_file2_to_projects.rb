class AddAttachmentFile2ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :file2
    end
  end

  def self.down
    remove_attachment :projects, :file2
  end
end
