class CreateCoverages < ActiveRecord::Migration
  def self.up
    create_table :coverages do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :coverages
  end
end
