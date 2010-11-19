class CreatePayables < ActiveRecord::Migration
  def self.up
    create_table :payables do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :payables
  end
end
