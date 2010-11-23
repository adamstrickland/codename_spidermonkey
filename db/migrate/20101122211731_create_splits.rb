class CreateSplits < ActiveRecord::Migration
  def self.up
    create_table :splits do |t|
      t.references :grade
      t.references :payee
      t.string :type
      t.float :value
      t.timestamps
    end
  end

  def self.down
    drop_table :splits
  end
end
