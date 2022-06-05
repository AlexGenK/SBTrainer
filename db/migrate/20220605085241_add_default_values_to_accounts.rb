class AddDefaultValuesToAccounts < ActiveRecord::Migration[6.1]
  def change
    change_column :accounts, :sum, :integer, default: 0
    change_column :accounts, :win, :integer, default: 0
    change_column :accounts, :spend, :integer, default: 0
  end
end
