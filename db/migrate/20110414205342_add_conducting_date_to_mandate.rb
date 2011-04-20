class AddConductingDateToMandate < ActiveRecord::Migration
  def self.up
    add_column :mandates, :conducting_date, :date
  end

  def self.down
    remove_column :mandates, :conducting_date
  end
end
