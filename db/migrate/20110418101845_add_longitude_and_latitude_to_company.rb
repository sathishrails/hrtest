class AddLongitudeAndLatitudeToCompany < ActiveRecord::Migration
  def self.up
    add_column :companies, :longitude, :float
    add_column :companies, :latitude, :float
  end

  def self.down
    remove_column :companies, :latitude
    remove_column :companies, :longitude
  end
end
