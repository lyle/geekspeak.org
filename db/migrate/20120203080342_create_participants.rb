class CreateParticipants < ActiveRecord::Migration
  def self.up
    create_table :participants do |t|
      t.integer :episode_id
      t.integer :user_id
      t.string :role
      t.timestamps
    end
  end

  def self.down
    drop_table :participants
  end
end
