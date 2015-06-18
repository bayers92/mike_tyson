class AddExperiencesAssocaitionToBackgroundInfo < ActiveRecord::Migration
  def change
  	  	add_column :experiences, :background_info_id, :integer
  	add_index :experiences, :background_info_id
  end
end
