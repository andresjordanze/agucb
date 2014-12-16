class CreateShareds < ActiveRecord::Migration
  def change
    create_table :shareds do |t|
      t.integer :user_id
      t.integer :publication_id

      t.timestamps
    end
  end
end
