# frozen_string_literal: true

# This class adds a name and role column to the users table.
class AddNameAndRoleToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :role, :integer
  end
end
