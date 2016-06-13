class AddSchoolToClerks < ActiveRecord::Migration
  def change
    add_reference :clerks, :school, index: true
  end
end
