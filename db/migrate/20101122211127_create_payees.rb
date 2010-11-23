class CreatePayees < ActiveRecord::Migration
  def self.up
    create_table :payees do |t|
      t.references :broker
      t.references :carrier
      t.timestamps
    end
  end

  def self.down
    drop_table :payees
  end
end
