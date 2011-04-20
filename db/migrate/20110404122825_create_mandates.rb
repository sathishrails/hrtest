class CreateMandates < ActiveRecord::Migration
  def self.up
    create_table :mandates do |t|
      t.string :designation

      t.timestamps
    end
  end

  def self.down
    drop_table :mandates
  end
end
