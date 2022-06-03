class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.references :match, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :sum
      t.integer :result
      t.decimal :k, precision: 5, scale: 3
      t.boolean :played, default: false

      t.timestamps
    end
  end
end
