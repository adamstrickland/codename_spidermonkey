class CreateStatements < ActiveRecord::Migration
  def self.up
    create_table :statements do |t|
      t.references :broker
      t.references :carrier
      t.timestamps
    end
  end

  def self.down
    drop_table :statements
  end
end
