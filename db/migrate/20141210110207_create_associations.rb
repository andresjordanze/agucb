class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.text :aboutUs
      t.text :mission
      t.text :vision
      t.text :institutionalPurposes
      t.text :generalObjectives
      t.text :specificObjectives
      t.text :organization

      t.timestamps
    end
  end
end
