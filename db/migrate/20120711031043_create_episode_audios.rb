class CreateEpisodeAudios < ActiveRecord::Migration
  def change
    create_table :episode_audios do |t|
      t.references :episode
      t.string :audio_file_name
      t.string :audio_content_type 
      t.integer :audio_file_size 
      t.datetime :audio_updated_at 
      t.timestamps
    end
    add_index :episode_audios, :episode_id
  end
end
