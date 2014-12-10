class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.integer :match_id
      t.integer :team_id
      t.string :detail
      t.string :referee

      t.timestamps
    end
  end
end
