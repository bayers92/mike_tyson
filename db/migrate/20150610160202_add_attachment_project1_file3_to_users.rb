class AddAttachmentProject1File3ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :project1_file3
    end
  end

  def self.down
    remove_attachment :users, :project1_file3
  end
end
