class ChangeToRolePluralToUsers < ActiveRecord::Migration
  def self.up
    rename_column :users, :role_mask, :roles_mask
  end

  def self.down
    rename_column :account_statements, :roles_mask, :role_mask
  end
end
