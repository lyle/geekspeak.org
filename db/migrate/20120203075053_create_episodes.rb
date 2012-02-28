class CreateEpisodes < ActiveRecord::Migration
  def self.up
    create_table :episodes do |t|
      t.string :title
      t.string :promo
      t.text :abstract
      t.has_attached_file :teaser
      t.string :status
      t.date :airdate
      t.integer :user_id
      t.string :slug
      t.timestamps
    end
    add_index :episodes, :slug
  end

  def self.down
    drop_table :episodes
  end
end
