class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :description
      t.integer :id_event_or_activity

      t.timestamps
    end
  end
end
