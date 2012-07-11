class AddContentToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :content, :text

  end
end
