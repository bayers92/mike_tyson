class AddAttachmentFile1ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :file1
    end
  end

  def self.down
    remove_attachment :projects, :file1
  end
end
