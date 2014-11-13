class CreateAssociateds < ActiveRecord::Migration
  def change
    create_table :associateds do |t|
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :cellphone
      t.string :email
      t.string :address
      t.string :universityDegree
      t.string :universityCareer
      t.string :yearDegree

      t.timestamps
    end
  end
end
