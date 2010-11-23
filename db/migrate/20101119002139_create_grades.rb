class CreateGrades < ActiveRecord::Migration
  def self.up
    create_table :grades do |t|
      t.references :contract
      t.string :type
      t.float :minimum
      t.float :maximum
      t.timestamps
    end
  end

  def self.down
    drop_table :grades
  end
end
