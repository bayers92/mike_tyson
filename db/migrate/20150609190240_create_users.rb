class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :domain_name
      t.string :name_first
      t.string :name_last
      t.text :homepage_header
      t.text :intro_paragraph

      t.timestamps
    end
  end
end
