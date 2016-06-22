class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.string :name

      t.timestamps
    end
  end
end
