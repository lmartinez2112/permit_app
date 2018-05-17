class ChangeAttrTypeToPermits < ActiveRecord::Migration[5.1]
  def up
  	change_column :permits, :permit_date_start, :datetime
  	change_column :permits, :permit_date_finish, :datetime
  end

  def down
  	change_column :permits, :permit_date_start, :date
  	change_column :permits, :permit_date_finish, :date
  end
end
