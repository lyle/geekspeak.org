class AddLockVersionToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :lock_version, :integer, :default => 0
  end
end
