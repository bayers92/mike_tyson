class CreateAnalytics < ActiveRecord::Migration
  def change
    create_table :analytics do |t|
      t.string :url
      t.references :user, index: true

      t.timestamps
    end
  end
end
