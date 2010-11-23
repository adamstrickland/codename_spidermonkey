class CreatePayables < ActiveRecord::Migration
  def self.up
    create_table :payables do |t|
      t.references :statement
      t.float :amount
      t.timestamps
    end
  end

  def self.down
    drop_table :payables
  end
end
