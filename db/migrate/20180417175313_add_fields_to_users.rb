class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :name, :string
    add_column :users, :lastname, :string
  end

  def down
    remove_column :users, :name, :string
    remove_column :users, :lastname, :string
  end
end
