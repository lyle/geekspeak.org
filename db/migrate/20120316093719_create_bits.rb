class CreateBits < ActiveRecord::Migration
  def self.up
    create_table :bits do |t|
      t.string :title
      t.string :url
      t.integer :user_id
      t.text :body
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :bits
  end
end
