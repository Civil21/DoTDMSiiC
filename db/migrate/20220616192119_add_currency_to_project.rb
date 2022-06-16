class AddCurrencyToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :currency, :integer, default: 0, null: false
  end
end
