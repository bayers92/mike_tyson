class RemoveShowcaseFromProjects < ActiveRecord::Migration
  def change
    remove_reference :projects, :showcase, index: true
  end
end
