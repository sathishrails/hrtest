class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.string :status
      t.integer :mark
      t.text :notes
      t.references :interview

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
