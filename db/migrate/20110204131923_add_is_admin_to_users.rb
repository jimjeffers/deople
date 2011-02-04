class AddIsAdminToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :is_admin, :integer, :length => 1, :default => 0
  end

  def self.down
    remove_column :users, :is_admin
  end
end