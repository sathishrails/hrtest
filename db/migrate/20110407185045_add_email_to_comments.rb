class AddEmailToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :email, :string
    add_column :comments, :photo, :string
  end

  def self.down
    remove_column :comments, :photo
    remove_column :comments, :email
  end
end
