class CreateGroups < ActiveRecord::Migration

  def self.up

    create_table :groups do |t|

      t.string  :name

      t.integer :user_id, :null => false

      t.timestamps

    end

    add_index :groups, :name, :unique => true
    add_index :groups, :user_id

  end

  def self.down
    drop_table :groups
  end

end
