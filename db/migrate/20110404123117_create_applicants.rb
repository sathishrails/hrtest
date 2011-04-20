class CreateApplicants < ActiveRecord::Migration
  def self.up
    create_table :applicants do |t|
      t.references :Interview
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :applicants
  end
end
