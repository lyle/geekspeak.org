class CreateEpisodeImages < ActiveRecord::Migration
  def change
    create_table :episode_images do |t|
      t.references :episode
      t.string :image_file_name
      t.string :image_content_type 
      t.integer :image_file_size 
      t.datetime :image_updated_at
      t.timestamps
    end
    add_index :episode_images, :episode_id
  end
end
