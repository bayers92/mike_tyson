class AddUserRefToDomains < ActiveRecord::Migration
  def change
    add_reference :domains, :user, index: true
  end
end
