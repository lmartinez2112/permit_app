class CreatePermits < ActiveRecord::Migration[5.1]
  def up
    create_table :permits do |t|
      t.string :permit_reason
      t.date :permit_date_start
      t.date :permit_date_finish
      t.references :permit_type, foreign_key: true
      t.references :permit_state, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :permits
  end
end
