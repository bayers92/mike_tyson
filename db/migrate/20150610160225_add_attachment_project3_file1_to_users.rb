class AddAttachmentProject3File1ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :project3_file1
    end
  end

  def self.down
    remove_attachment :users, :project3_file1
  end
end
