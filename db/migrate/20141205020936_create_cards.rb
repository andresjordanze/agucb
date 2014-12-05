class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :match_id
      t.integer :player_id
      t.integer :team_id
      t.string :type
      t.integer :number

      t.timestamps
    end
  end
end
