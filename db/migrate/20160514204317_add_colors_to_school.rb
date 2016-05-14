class AddColorsToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :color1, :string
    add_column :schools, :color2, :string
  end
end
