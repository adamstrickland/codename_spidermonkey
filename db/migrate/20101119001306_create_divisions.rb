class CreateDivisions < ActiveRecord::Migration
  def self.up
    create_table :divisions do |t|
      t.string :name
      t.references :group
      t.timestamps
    end
  end

  def self.down
    drop_table :divisions
  end
end
