class AddDurationToEpisodeAudios < ActiveRecord::Migration
  def change
      add_column :episode_audios, :duration, :integer
  end
end
