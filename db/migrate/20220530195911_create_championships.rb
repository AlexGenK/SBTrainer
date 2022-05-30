class CreateChampionships < ActiveRecord::Migration[6.1]
  def change
    create_table :championships do |t|
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
