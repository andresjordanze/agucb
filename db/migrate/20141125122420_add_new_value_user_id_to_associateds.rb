class AddNewValueUserIdToAssociateds < ActiveRecord::Migration
  def change
    add_column :associateds, :userId, :integer
  end
end
