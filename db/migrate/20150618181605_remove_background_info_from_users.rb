class RemoveBackgroundInfoFromUsers < ActiveRecord::Migration
  def change
 	remove_column :users, :background_type, :integer
	remove_column :users, :background_img1_file_name, :string
	remove_column :users, :background_img1_content_type, :string
	remove_column :users, :background_img1_file_size, :integer
	remove_column :users, :background_img1_updated_at, :datetime
	remove_column :users, :background_img2_file_name, :string
	remove_column :users, :background_img2_content_type, :string
	remove_column :users, :background_img2_file_size, :integer
	remove_column :users, :background_img2_updated_at, :datetime
	remove_column :users, :background_img3_file_name, :string
	remove_column :users, :background_img3_content_type, :string
	remove_column :users, :background_img3_file_size, :integer
	remove_column :users, :background_img3_updated_at, :datetime
	remove_column :users, :background_img4_file_name, :string
	remove_column :users, :background_img4_content_type, :string
	remove_column :users, :background_img4_file_size, :integer
	remove_column :users, :background_img4_updated_at, :datetime
	remove_column :users, :background_link1, :string
	remove_column :users, :background_link2, :string
	remove_column :users, :background_link3, :string
	remove_column :users, :background_link4, :string
  end
end
