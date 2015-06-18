class RemoveIntroParagraphFromHomepageInfo < ActiveRecord::Migration
  def change
  	remove_column :homepage_infos, :intro_paragraph, :text
  end
end
