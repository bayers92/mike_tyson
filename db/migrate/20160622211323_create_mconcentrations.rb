class CreateMconcentrations < ActiveRecord::Migration
  def change
    create_table :mconcentrations do |t|
      t.string :name

      t.timestamps
    end
  end
end
