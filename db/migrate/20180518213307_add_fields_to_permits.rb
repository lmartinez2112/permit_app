class AddFieldsToPermits < ActiveRecord::Migration[5.1]
  def up
    add_column :permits, :permit_time_start, :time
    add_column :permits, :permit_time_finish, :time
  end

  def down
  	remove_column :permits, :permit_time_start, :time
  	remove_column :permits, :permit_time_finish, :time
  end
end
