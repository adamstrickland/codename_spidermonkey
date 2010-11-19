class CreateStatements < ActiveRecord::Migration
  def self.up
    create_table :statements do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :statements
  end
end
