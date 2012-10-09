class AddAdminToUsers < ActiveRecord::Migration
  
  class User < ActiveRecord::Base
    #this is to turn off validation for the migration for user
  end
  
  def change
    add_column :users, :admin, :boolean, :default => false
    add_column :users, :active, :boolean, :default => false
    User.reset_column_information
    User.update_all ["active = ?", true]
    User.find(1).update_attributes!(:admin => true)
  end
end
