class AddNamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_column :users, :display_name, :string
  end
end
