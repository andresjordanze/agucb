class CreateEnabledPlayers < ActiveRecord::Migration
  def change
    create_table :enabled_players do |t|
      t.integer :match_id
      t.integer :team_id
      t.integer :player_id
      t.integer :number

      t.timestamps
    end
  end
end
