class CreateShowcases < ActiveRecord::Migration
  def change
    create_table :showcases do |t|
    	t.integer :showcase_type
      t.timestamps
    end
  end
end
