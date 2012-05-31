class CreateSegmentBits < ActiveRecord::Migration
  def self.up
    create_table :segment_bits do |t|
      t.initeger :segment_id
      t.integer :bit_id
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :segment_bits
  end
end
