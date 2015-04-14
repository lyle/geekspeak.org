class AddPublicationTimeToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :publication_time, :timestamp
  end
end
