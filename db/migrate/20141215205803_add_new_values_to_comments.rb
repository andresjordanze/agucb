class AddNewValuesToComments < ActiveRecord::Migration
  def change
    add_column :comments, :publication_id, :integer
  end
end
