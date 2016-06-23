class AddSchoolToReviewers < ActiveRecord::Migration
  def change
    add_reference :reviewers, :school, index: true
  end
end
