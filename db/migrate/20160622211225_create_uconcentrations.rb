class CreateUconcentrations < ActiveRecord::Migration
  def change
    create_table :uconcentrations do |t|
      t.string :name

      t.timestamps
    end
  end
end
