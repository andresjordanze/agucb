class CreateScorers < ActiveRecord::Migration
  def change
    create_table :scorers do |t|
      t.integer :match_id
      t.integer :player_id
      t.integer :team_id
      t.integer :goals

      t.timestamps
    end
  end
end
