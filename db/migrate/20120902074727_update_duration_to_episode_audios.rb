class UpdateDurationToEpisodeAudios < ActiveRecord::Migration
  def up
    say_with_time "Updating Episode Audio - adding duration..." do
      EpisodeAudio.all.each do |ep_audio|
        ep_audio.update_column :duration, Mp3Info.open(ep_audio.audio.path).length
      end
    end
  end

end
