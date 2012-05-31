class CreateSegments < ActiveRecord::Migration
  def self.up
    create_table :segments do |t|
      t.string :title
      t.integer :episode_id
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :segments
  end
end
