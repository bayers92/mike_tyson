class AddAttachmentProject4File1ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :project4_file1
    end
  end

  def self.down
    remove_attachment :users, :project4_file1
  end
end
