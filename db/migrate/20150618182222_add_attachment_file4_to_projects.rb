class AddAttachmentFile4ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :file4
    end
  end

  def self.down
    remove_attachment :projects, :file4
  end
end
