class AddSlugToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :slug, :string
    add_index :episodes, :slug
  end
end
