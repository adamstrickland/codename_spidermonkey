class CreatePlans < ActiveRecord::Migration
  def self.up
    create_table :plans do |t|
      t.string :name
      t.string :line_of_coverage
      t.references :carrier
      t.timestamps
    end
  end

  def self.down
    drop_table :plans
  end
end
