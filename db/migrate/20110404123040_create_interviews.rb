class CreateInterviews < ActiveRecord::Migration
  def self.up
    create_table :interviews do |t|
      t.references :mandate
      t.string :name
      t.date :conducting_date
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :interviews
  end
end
