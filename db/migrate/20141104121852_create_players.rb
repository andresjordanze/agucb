class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :lastname
      t.string :career
      t.integer :goals
      t.integer :t_ama
      t.integer :t_roj
      t.integer :team_id

      t.timestamps
    end
  end
end
