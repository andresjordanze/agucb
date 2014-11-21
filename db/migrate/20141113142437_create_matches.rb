class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :place
      t.integer :team_id_1
      t.integer :team_id_2
      t.string :referee
      t.integer :goals_1
      t.integer :goals_2
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
