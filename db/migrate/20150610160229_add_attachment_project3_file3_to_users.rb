class AddAttachmentProject3File3ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :project3_file3
    end
  end

  def self.down
    remove_attachment :users, :project3_file3
  end
end
