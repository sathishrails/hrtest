class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.text :domain
      t.integer :no_of_employee
      t.string :iso_standard
      t.string :cmmi_level
      t.integer :no_of_branch
      t.string :email
      t.integer :phone_no
      t.string :website

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
