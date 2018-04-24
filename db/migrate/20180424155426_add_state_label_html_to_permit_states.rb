class AddStateLabelHtmlToPermitStates < ActiveRecord::Migration[5.1]
  def up
    add_column :permit_states, :state_label_html, :string
  end

  def down
    remove_column :permit_states, :state_label_html, :string
  end
end
