class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.float :amount
      t.string :classification
      t.references :payee
      t.references :payable
      t.references :transaction
      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
