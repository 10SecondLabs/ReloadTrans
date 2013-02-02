class AddChangePasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :change_password, :boolean, :default => false
  end
end
