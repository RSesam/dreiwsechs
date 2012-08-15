class CreateChars < ActiveRecord::Migration

  def self.up

    create_table :chars do |t|

      t.string  :name

      t.integer :user_id, :null => false
      t.integer :group_id, :null => true

      t.timestamps

    end

    add_index :chars, :name
    add_index :chars, :user_id

  end

  def self.down
    drop_table :chars
  end

end
