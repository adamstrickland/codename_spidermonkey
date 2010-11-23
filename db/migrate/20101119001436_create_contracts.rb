class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.references :coverage
      t.boolean :multiplan, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
