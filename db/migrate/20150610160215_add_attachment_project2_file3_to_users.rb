class AddAttachmentProject2File3ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :project2_file3
    end
  end

  def self.down
    remove_attachment :users, :project2_file3
  end
end
