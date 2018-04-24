class AddTypeLabelHtmlToPermitTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :permit_types, :type_label_html, :string
  end

  def down
    remove_column :permit_types, :type_label_html, :string
  end
end
