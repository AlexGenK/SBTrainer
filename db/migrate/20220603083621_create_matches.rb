class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.references :championship, null: false, foreign_key: true
      t.date :date
      t.string :team1
      t.string :team2
      t.integer :score1, default: 0
      t.integer :score2, default: 0
      t.integer :team1_svm
      t.integer :team2_svm
      t.integer :draw_svm
      t.integer :team1_prf
      t.integer :team2_prf
      t.integer :draw_prf
      t.integer :team1_knn
      t.integer :team2_knn
      t.integer :draw_knn
      t.decimal :team1_k, precision: 5, scale: 3
      t.decimal :tea2_k, precision: 5, scale: 3
      t.decimal :draw_k, precision: 5, scale: 3
      t.boolean :played, default: false

      t.timestamps
    end
  end
end
