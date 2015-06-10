class AddAttachmentProject1File2ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :project1_file2
    end
  end

  def self.down
    remove_attachment :users, :project1_file2
  end
end
