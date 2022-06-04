class RenameTea2kToTeam2kForMatch < ActiveRecord::Migration[6.1]
  def change
    rename_column :matches, :tea2_k, :team2_k
  end
end
