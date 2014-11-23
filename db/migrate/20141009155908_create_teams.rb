class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :p_jug
      t.integer :p_gan
      t.integer :p_per
      t.integer :p_emp
      t.integer :goles
      t.integer :tar_roj
      t.integer :tar_ama
      t.string :login
      t.string :password
      t.string :delegado
      t.string :email
      t.string :phone
      t.boolean :check
      t.string :category
      t.integer :position
      t.string :rol

      t.timestamps
    end
  end
end
