class CreatePolicies < ActiveRecord::Migration
  def self.up
    create_table :policies do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :policies
  end
end
