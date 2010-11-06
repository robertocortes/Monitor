class AddToRoleToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role_mask, :integer
  end

  def self.down
    remove_column :users, :role_mask
  end
end
