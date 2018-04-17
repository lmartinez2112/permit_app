class CreatePermitStates < ActiveRecord::Migration[5.1]
  def up
    create_table :permit_states do |t|
      t.string :name_state
      t.string :abb_state

      t.timestamps
    end
  end

  def down
  	drop_table :permit_states
  end
end
