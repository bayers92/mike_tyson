class CreateWexperiences < ActiveRecord::Migration
  def change
    create_table :wexperiences do |t|
      t.string :name

      t.timestamps
    end
  end
end
