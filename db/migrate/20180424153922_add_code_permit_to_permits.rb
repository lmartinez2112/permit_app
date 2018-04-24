class AddCodePermitToPermits < ActiveRecord::Migration[5.1]
  def up
    add_column :permits, :code_permit, :string
  end

  def down
    remove_column :permits, :code_permit, :string
  end
end
