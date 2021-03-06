class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|

      t.string  :login,     :null => false, :limit => 30
      t.string  :pass,      :null => false, :limit => 30
      t.string  :salt,      :null => false

      t.string  :vorname
      t.string  :nachname
      t.string  :email

      t.integer :status,    :null => false, :default => 0
      t.boolean :admin,     :null => false, :default => false

      t.text    :bemerkung

      t.timestamps
    end

    add_index :users, :login      ,:unique => true
    add_index :users, :vorname
    add_index :users, :nachname
    add_index :users, :email

  end

  def self.down
    drop_table :users
  end

end
