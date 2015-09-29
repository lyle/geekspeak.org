class AddGuidOverrideToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :guid_override, :string
  end
end
