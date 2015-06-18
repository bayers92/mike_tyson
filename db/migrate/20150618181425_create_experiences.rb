class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
    	t.string :url
      t.timestamps
    end
  end
end
