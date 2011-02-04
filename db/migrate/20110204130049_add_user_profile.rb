class AddUserProfile < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :approved, :integer, :length => 1, :default => 0
  end

  def self.down
    remove_column :users, :approved
    remove_column :users, :last_name
    remove_column :users, :first_name
  end
end