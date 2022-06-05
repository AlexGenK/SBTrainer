class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :sum
      t.integer :win
      t.integer :spend

      t.timestamps
    end
  end
end
