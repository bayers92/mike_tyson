class AddMigrationsToAllColumns < ActiveRecord::Migration
  def change
  	change_column_default(:homepage_infos, :homepage_header, "")
  	change_column_default(:homepage_infos, :homepage_display_name, "")

  	change_column_default(:personal_infos, :name_first, "")
  	change_column_default(:personal_infos, :name_last, "")
  	change_column_default(:personal_infos, :intro_paragraph, "")
  end
end
