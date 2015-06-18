class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :title
    	t.text :paragraph
      t.timestamps
    end
  end
end
