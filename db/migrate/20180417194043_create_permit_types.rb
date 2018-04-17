class CreatePermitTypes < ActiveRecord::Migration[5.1]
  def up
    create_table :permit_types do |t|
      t.string :name_type
      t.string :abb_type

      t.timestamps
    end
  end

  def down
  	drop_table :permit_types
  end
end
