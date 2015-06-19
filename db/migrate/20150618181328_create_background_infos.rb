class CreateBackgroundInfos < ActiveRecord::Migration
  def change
    create_table :background_infos do |t|
 		t.integer :background_type
      t.timestamps
    end
  end
end
