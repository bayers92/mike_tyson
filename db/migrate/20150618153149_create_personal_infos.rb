class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
 		t.string :name_first
    	t.string :name_last
    	t.text :intro_paragraph
      t.timestamps
    end
  end
end
