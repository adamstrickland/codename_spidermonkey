class CreateBrokers < ActiveRecord::Migration
  def self.up
    create_table :brokers do |t|
      t.string :name
      t.timestamps
    end
    
    create_table :brokers_coverages, :id => false do |t|
      t.references :broker
      t.references :coverage
    end
  end

  def self.down
    drop_table :brokers
  end
end
