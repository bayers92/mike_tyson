class AddAttachmentProject2File2ToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :project2_file2
    end
  end

  def self.down
    remove_attachment :users, :project2_file2
  end
end
