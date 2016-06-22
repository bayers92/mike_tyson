class CreateUndergrads < ActiveRecord::Migration
  def change
    create_table :undergrads do |t|
      t.string :name

      t.timestamps
    end
  end
end
